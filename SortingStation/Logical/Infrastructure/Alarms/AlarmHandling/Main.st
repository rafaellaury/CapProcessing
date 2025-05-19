(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 17, 2025/4:42 PM 
 * Description: Structure text program implementing simple alarm handling
 *********************************************************************************)

PROGRAM _INIT
	
	// Enabling MpAlarmXCore function block
	MpAlarmXCore_0.Enable := TRUE;
	MpAlarmXCore_0.MpLink := ADR(MpLinkSORTING_gAlarmXCore);
	
	// Enabling MpAlarmXHistory function block
	MpAlarmXHistory_0.Enable := TRUE;
	MpAlarmXHistory_0.MpLink := ADR(MpLinkSORTING_gAlarmXHistory);

END_PROGRAM

PROGRAM _CYCLIC
	
	CommsErrors.X2X.X2X_ModuleOk := CommsErrors.X2X.X20BC0083_ModuleOk AND CommsErrors.X2X.X20BT9100_ModuleOk AND
		CommsErrors.X2X.X20DI9371_ModuleOk AND CommsErrors.X2X.X20DO9322_ModuleOk AND CommsErrors.X2X.X20PD0011_ModuleOk
		AND CommsErrors.X2X.X20PD0012_ModuleOk AND CommsErrors.X2X.X20PS9400_ModuleOk AND CommsErrors.X2X.X67SM2436_ModuleOk;
	
	
	// Automatic module errors - 1000 range
	IF AutomaticController.Status.Errors.Error1 THEN
		MpAlarmXSet(MpLinkSORTING_gAlarmXCore, 'Sorting station not homed');
	ELSE
		MpAlarmXReset(MpLinkSORTING_gAlarmXCore, 'Sorting station not homed');
	END_IF
	
	IF AutomaticController.Status.Errors.Error2 THEN
		MpAlarmXSet(MpLinkSORTING_gAlarmXCore, 'Automatic in Error state');
	ELSE
		MpAlarmXReset(MpLinkSORTING_gAlarmXCore, 'Automatic in Error state');
	END_IF
	
	// Sorter module errors - 2000 range
	IF SorterControl.Status.Errors.Error1 THEN
		MpAlarmXSet(MpLinkSORTING_gAlarmXCore, 'Product stuck between stopper and lane');
	ELSE
		MpAlarmXReset(MpLinkSORTING_gAlarmXCore, 'Product stuck between stopper and lane');
	END_IF
	
	IF SorterControl.Status.Errors.Error2 THEN
		MpAlarmXSet(MpLinkSORTING_gAlarmXCore, 'Product behind stopper');
	ELSE
		MpAlarmXReset(MpLinkSORTING_gAlarmXCore, 'Product behind stopper');
	END_IF
	
	// Manual module errors - 3000 range
	IF ManualControl.Status.Error THEN
		MpAlarmXSet(MpLinkSORTING_gAlarmXCore, 'Incorrect switch open');
	ELSE
		MpAlarmXReset(MpLinkSORTING_gAlarmXCore, 'Incorrect switch open');
	END_IF
	
	// Comms errors - 4000 range
	IF NOT CommsErrors.PLK.FPLK_ModuleOk THEN
		MpAlarmXSet(MpLinkSORTING_gAlarmXCore, 'PLK comms error');
	ELSE
		MpAlarmXReset(MpLinkSORTING_gAlarmXCore, 'PLK comms error');
	END_IF
	
	IF NOT CommsErrors.X2X.X2X_ModuleOk THEN
		MpAlarmXSet(MpLinkSORTING_gAlarmXCore, 'X2X comms error');
	ELSE
		MpAlarmXReset(MpLinkSORTING_gAlarmXCore, 'X2X comms error');
	END_IF
	
	// Calling all function blocks cyclically
	MpAlarmXCore_0();
	MpAlarmXHistory_0();
	MpAlarmXAcknowledgeAll_0();
	
END_PROGRAM

PROGRAM _EXIT
	
	// Enabling MpAlarmXCore function block
	MpAlarmXCore_0.Enable := FALSE;
	MpAlarmXCore_0();
	
	// Enabling MpAlarmXHistory function block
	MpAlarmXHistory_0.Enable := FALSE;
	MpAlarmXHistory_0();
	 
END_PROGRAM


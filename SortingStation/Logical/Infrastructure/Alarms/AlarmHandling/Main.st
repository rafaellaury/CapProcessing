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
	
	
END_PROGRAM

PROGRAM _EXIT
	
	// Enabling MpAlarmXCore function block
	MpAlarmXCore_0.Enable := FALSE;
	MpAlarmXCore_0();
	
	// Enabling MpAlarmXHistory function block
	MpAlarmXHistory_0.Enable := FALSE;
	MpAlarmXHistory_0();
	 
END_PROGRAM


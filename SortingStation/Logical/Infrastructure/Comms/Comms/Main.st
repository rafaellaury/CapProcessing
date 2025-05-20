(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 19, 2025/5:55 PM 
 * Description: Basic program to interact with the Distribution Station via OPCUA
 *********************************************************************************)

PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	 
	OpcUaControl;
	
	IF NOT OpcUaControl.Read.DistributionReady THEN
		gStop := TRUE;
	ELSE
		IF gStop THEN
			gStop := FALSE;
		END_IF
END_IF
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


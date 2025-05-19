
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	
	
	
	
	DistributionMpAlarmX.Enable := TRUE;
	DistributionMpAlarmX.MpLink :=ADR(DistributionAlarmXCore);
	
	DistributionAlarmXUI.Enable := TRUE;
	DistributionAlarmXUI.MpLink := ADR(DistributionAlarmXCore);
	DistributionAlarmXUI.UIConnect := ADR(DistributionUIConnectCore);
	
	
	
	
	
	
	
	IF BtnC THEN
		MpAlarmXSet(DistributionAlarmXCore,'AlarmA');
	ELSE
		MpAlarmXReset(DistributionAlarmXCore,'AlarmA');
	END_IF
	
	
	
	
	
	
	
	DistributionMpAlarmX();
	DistributionAlarmXUI();
	
	
	
	
	
	
	
	
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


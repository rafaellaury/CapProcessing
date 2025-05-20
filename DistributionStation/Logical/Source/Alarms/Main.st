(*SOME SOMEONE SOMEWHERE*)
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	(*Enabling MP AlarmXCore Function Block*)
	DistributionMpAlarmX.Enable := TRUE;
	DistributionMpAlarmX.MpLink :=ADR(DistributionAlarmXCore);
	
	
	(*WHATEVER ..............*)
	IF MachineControl.Status.Running AND IO.DIn.SwivelDriveInMagazinePosition THEN
		MpAlarmXSet(DistributionAlarmXCore,'Suction Cup Alarm');
		Alarms := TRUE;
	ELSE
		MpAlarmXReset(DistributionAlarmXCore,'Suction Cup Alarm');
	END_IF
	
	IF MachineControl.Command.Reset THEN
		Alarms := FALSE;
	END_IF
	
	
	
	(**)
	IF MachineControl.Status.Running AND NOT (IO.DIn.ProductAtStartingPosition OR IO.DIn.ProductAtUnloadingPosition) THEN
		MpAlarmXSet(DistributionAlarmXCore,'Conveyor Sensor Alarm');
		Alarms := TRUE;
	ELSE
		MpAlarmXReset(DistributionAlarmXCore,'Conveyor Sensor Alarm');
		Alarms := FALSE;
	END_IF
	
		
	IF ConvAxis_Base.Error  THEN
		MpAlarmXSet(DistributionAlarmXCore,'Conv Faulted');
		Alarms := TRUE;
	ELSE
		MpAlarmXReset(DistributionAlarmXCore,'Conv Faulted');
		Alarms := FALSE;
	END_IF
	
	Timer[0](IN:= Machine.State1 , PT:=T#6s);
	IF Timer[0].Q THEN
		MpAlarmXSet(DistributionAlarmXCore,'State1 Alarm');
		Alarms := TRUE;
	ELSE
		MpAlarmXReset(DistributionAlarmXCore,'State1 Alarm');
		Alarms := FALSE;
	END_IF	
	
	
	Timer[1](IN:= Machine.State3 , PT:=T#9s);
	IF Timer[1].Q THEN
		MpAlarmXSet(DistributionAlarmXCore,'State3 Alarm');
		Alarms := TRUE;
	ELSE
		MpAlarmXReset(DistributionAlarmXCore,'State3 Alarm');
		Alarms := FALSE;
	END_IF	

		
	
	
	DistributionMpAlarmX();

	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


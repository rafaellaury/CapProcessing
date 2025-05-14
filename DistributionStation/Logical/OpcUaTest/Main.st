
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	(* Insert code here *)
	 
	IF Test = 255 THEN
		Test := Test - 1;
	ELSE
		Test := Test + 1;
	END_IF
	
	
	MpAxis_Base_0.MpLink := ADR(Conveyor);
	MpAxis_Base_0.Parameters := ADR(AxisPar);


	MC_BR_SelectMotorCurrent.Axis := ADR(Conveyor);
	//MC_BR_SelectMotorCurrent.Enable:=1;
	
	
	MC_BR_SelectMotorCurrent();
	MpAxis_Base_0();
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


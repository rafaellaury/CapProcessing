
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
	
	

	AxisPar.Velocity := 600;
	AxisPar.Acceleration := 3000;
	AxisPar.Deceleration := 3000;
	AxisPar.Direction := 0;
	MpAxis_Base_0.MpLink := ADR(DistributionConvy);
	MpAxis_Base_0.Parameters := ADR(AxisPar);
	MpAxis_Base_0();
	
	
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


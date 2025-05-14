
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
	
	MC_BR_SelectMotorCurrent_StpAx_0.Enable
	MC_BR_SelectMotorCurrent_StpAx_0.Axis:=
	
	
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


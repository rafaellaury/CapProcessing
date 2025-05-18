(*global interface types*)

TYPE
	HomingCommandType : 	STRUCT  (*Commands for homing*)
		HomeStation : BOOL; (*Command to home*)
	END_STRUCT;
	HomingStatusType : 	STRUCT  (*Statuses for homing*)
		StationHomed : BOOL; (*Station is homed*)
	END_STRUCT;
	HomingControlType : 	STRUCT  (*Control structure for homing*)
		Cmd : HomingCommandType; (*Homing commands*)
		Status : HomingStatusType; (*Homing statuses*)
	END_STRUCT;
END_TYPE

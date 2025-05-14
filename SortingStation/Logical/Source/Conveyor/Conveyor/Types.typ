(*local enumerated types*)

TYPE
	MotionControlEnum : 
		( (*Enum type for state machine variable*)
		mcINIT := 1, (*Intial state*)
		mcPOWER := 2, (*Powering on*)
		mcHOME := 3, (*Homing the axis*)
		mcWAIT_FOR_CMD := 4, (*Waiting for a move command*)
		mcPROCESS := 6, (*Process the move command*)
		mcERROR := 7 (*Error handling*)
		);
END_TYPE

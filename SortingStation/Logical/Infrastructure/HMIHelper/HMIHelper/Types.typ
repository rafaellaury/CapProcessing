(*local enum types*)

TYPE
	OpModeEnum : 
		( (*Enumerated type for state machine*)
		omMANUAL, (*Manual mode*)
		omAUTOMATIC, (*Automatic mode*)
		omHOMING (*Homing mode*)
		);
	HomingType : 	STRUCT  (*Type for homing mode*)
		ConveyorStopped : BOOL; (*Conveyor stopped*)
		Switch1Retracted : BOOL; (*Switch 1 retracted*)
		Switch2Retracted : BOOL; (*Switch 2 retracted*)
		StopperRetracted : BOOL; (*Stopper retracted*)
		ProductsRemoved : BOOL; (*Products removed from station*)
		EnableAck : BOOL; (*Enable acknowledge button*)
		HomingDone : BOOL; (*Homing is complete*)
	END_STRUCT;
END_TYPE

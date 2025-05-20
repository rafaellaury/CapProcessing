(*global interface variables for comms*)

TYPE
	OpcUaWriteType : 	STRUCT  (*Variables that are written to the Distribution Station*)
		ConveyorVelocity : REAL;
	END_STRUCT;
	OpcUaReadType : 	STRUCT  (*Variables that are read from the Distribution Station*)
		ProductArriving : BOOL; (*Product is arriving at the Sorting Station*)
		DistributionReady : BOOL; (*Distribution station is ready*)
		DistributionHomed : BOOL; (*Station is homed*)
		HomingConfirm : BOOL; (*Homing done confirmation button pressed*)
		AutomaticActive : BOOL; (*TRUE if automatic is controlled from Distribution station*)
	END_STRUCT;
	OpcUaControlType : 	STRUCT 
		Write : OpcUaWriteType; (*Write variables*)
		Read : OpcUaReadType; (*Read variables*)
		ServerConnectionError : BOOL; (*Server communcication error*)
	END_STRUCT;
END_TYPE

(*global interface structure types*)

TYPE
	ConveyorCommandType : 	STRUCT  (*Conveyor command structure type*)
		Start : BOOL; (*Command to start the conveyor moving*)
		Stop : BOOL; (*Command to stop the conveyor*)
		JogForward : BOOL; (*Jog command forward*)
		JogBackward : BOOL; (*Jog command backward*)
		Power : BOOL; (*Command to power on the axis*)
		Home : BOOL; (*Command to home the axis*)
	END_STRUCT;
	ConveyorParameterType : 	STRUCT  (*Conveyor parameter structure type*)
		Position : LREAL; (*Initial parameter for the axis - position*)
		Velocity : REAL; (*Initial parameter for the axis - velocity*)
		Acceleration : REAL; (*Initial parameter for the axis - acceleration*)
		Deceleration : REAL; (*Initial parameter for the axis - deceleration*)
		HomingMode : McHomingModeEnum; (*Homing mode*)
	END_STRUCT;
	ConveyorStatusType : 	STRUCT  (*Conveyor status structure type*)
		IsPowered : BOOL; (*True if powered*)
		IsHomed : BOOL; (*Status variable true if it is homed*)
		Error : BOOL; (*True if there is an error present*)
	END_STRUCT;
	ConveyorType : 	STRUCT  (*Conveyor controller type*)
		Cmd : ConveyorCommandType; (*Instance of command structure*)
		Par : ConveyorParameterType; (*Instance of parameter structure*)
		Status : ConveyorStatusType; (*Instance of status structure*)
	END_STRUCT;
END_TYPE

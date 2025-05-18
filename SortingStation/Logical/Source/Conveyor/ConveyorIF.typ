(*global interface structure types*)

TYPE
	ConveyorCommandType : 	STRUCT  (*Conveyor command structure type*)
		Start : BOOL; (*Command to start the conveyor moving*)
		Stop : BOOL; (*Command to stop the conveyor*)
		Reset : BOOL; (*Command to reset in case of an error*)
		JogForward : BOOL; (*Jog command forward*)
		JogBackward : BOOL; (*Jog command backward*)
		Power : BOOL; (*Command to power on the axis*)
		Home : BOOL; (*Command to home the axis*)
	END_STRUCT;
	ConveyorParameterType : 	STRUCT  (*Conveyor parameter structure type*)
		Position : LREAL := 0.0; (*Initial parameter for the axis - position*)
		Velocity : REAL := 400; (*Initial parameter for the axis - velocity*)
		Acceleration : REAL := 3000; (*Initial parameter for the axis - acceleration*)
		Deceleration : REAL := 3000; (*Initial parameter for the axis - deceleration*)
		HomingMode : McHomingModeEnum := mcHOMING_DEFAULT; (*Homing mode*)
	END_STRUCT;
	ConveyorType : 	STRUCT  (*Conveyor controller type*)
		Cmd : ConveyorCommandType; (*Instance of command structure*)
		Par : ConveyorParameterType; (*Instance of parameter structure*)
		Status : ConveyorStatusType; (*Instance of status structure*)
	END_STRUCT;
	ConveyorStatusType : 	STRUCT  (*Conveyor status structure type*)
		IsPowered : BOOL; (*True if powered*)
		IsHomed : BOOL; (*Status variable true if it is homed*)
		Error : BOOL; (*True if there is an error present*)
		MoveActive : BOOL; (*Checking if move is active*)
	END_STRUCT;
END_TYPE

(*global interface types*)

TYPE
	ManualCommandType : 	STRUCT  (*Commands type for manual mode*)
		ClassifyProduct : BOOL; (*Command to classify product*)
		JogConveyorBackward : BOOL; (*Jog conveyor forward*)
		JogConveyorForward : BOOL; (*Jog conveyor backward*)
		RetractStopper : BOOL; (*Retract stopper*)
		ExtendSwitch2 : BOOL; (*Extend switch 1*)
		ExtendSwitch1 : BOOL; (*Extend switch 2*)
	END_STRUCT;
	ManualControlType : 	STRUCT  (*Manual mode control structure type*)
		Cmd : ManualCommandType; (*Command for manual mode*)
		Status : ManualStatusType; (*Status for manual mode*)
	END_STRUCT;
	ManualStatusType : 	STRUCT  (*Status type for manual mode*)
		ProductClassified : BOOL; (*Status showing product has been classified*)
		DestinationLane : USINT; (*Lane 1, 2 or 3 - default is 3*)
		ProductInActiveArea : BOOL; (*True if the product is between stopper and lane*)
		Error : BOOL; (*Error triggered*)
	END_STRUCT;
END_TYPE

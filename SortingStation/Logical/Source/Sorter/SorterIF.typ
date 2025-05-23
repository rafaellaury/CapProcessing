(*global sorter interface types*)

TYPE
	SorterCommandType : 	STRUCT  (*Commands to pass to the sorter*)
		ExtendSwitch1 : BOOL; (*Command to extend the first switch*)
		ExtendSwitch2 : BOOL; (*Command to extend the second switch*)
		RetractStopper : BOOL; (*Command to retract the stopper*)
		InternalHome : BOOL; (*Separate command to home internally*)
		Home : BOOL; (*Command to home sorter*)
		Reset : BOOL; (*Command to reset*)
	END_STRUCT;
	SortingRecipeType : 	STRUCT  (*Recipe type for lane allocation*)
		Lane1ProductType : ProductTypeEnum; (*Lane 1 product type allocation*)
		Lane2ProductType : ProductTypeEnum; (*Lane 2 product type allocation*)
		Lane3ProductType : ProductTypeEnum; (*Lane 3 product type allocation*)
	END_STRUCT;
	SorterParameterType : 	STRUCT  (*Parameters for the sorter*)
		LaneAllocationRecipe : SortingRecipeType; (*Lane allocation recipe*)
	END_STRUCT;
	SorterErrors : 	STRUCT  (*Structure for the process errors of the sorter*)
		Error1 : BOOL; (*ERROR 1 = Cap not sorted, stuck on conveyor or ejected. Please check machine*)
		Error2 : BOOL; (*ERROR 2 = Cap stuck behind stopped*)
		Error3 : BOOL; (*ERROR 3 = One of the lanes is full*)
	END_STRUCT;
	SorterStates : 	STRUCT  (*Local state machine tracker*)
		Init : BOOL; (*Initial state*)
		InitDone : BOOL; (*Initial done bit*)
		Waiting : BOOL; (*Waiting state*)
		WaitingDone : BOOL; (*Waiting done bit*)
		Classifying : BOOL; (*Classifying state*)
		ClassifyingDone : BOOL; (*Classifying done bit*)
		SortingProduct : BOOL; (*Sorting state*)
		SortingProductDone : BOOL; (*Sorting done bit*)
		Error : BOOL; (*Error state*)
	END_STRUCT;
	SorterStatusType : 	STRUCT  (*Status variables from the sorter*)
		ProductAvailable : BOOL; (*Product is available at beginning of line*)
		ProductMetallic : BOOL; (*Product material sensor*)
		ProductNotBlack : BOOL; (*Product color sensor*)
		ProductType : ProductTypeEnum := ptUNKNOWN; (*Product type*)
		LaneFull : BOOL; (*Product in between stopper and sorting*)
		Switch1Retracted : BOOL; (*Switch 1 is retracted (not active)*)
		Switch1Extended : BOOL; (*Switch 1 is extended (active)*)
		Switch2Retracted : BOOL; (*Switch 2 is retracted (not active)*)
		Switch2Extended : BOOL; (*Switch 2 is extended (active)*)
		IsHomed : BOOL; (*True if all pneumatic valves in home position*)
		ProcessDone : BOOL; (*Process done bit*)
		SorterState : SorterStates; (*State machine local*)
		Errors : SorterErrors; (*Errors structure*)
		DestLane : UINT := 0; (*Destination lane, 1 2 or 3*)
	END_STRUCT;
	SorterType : 	STRUCT  (*Sorter custom type for interface*)
		Cmd : SorterCommandType; (*Command structure for sorter*)
		Par : SorterParameterType; (*Parameter structure for sorter*)
		Status : SorterStatusType; (*Status structure with feedback from sorter*)
	END_STRUCT;
	ProductCounterType : 	STRUCT  (*Product counter type*)
		ProductCountRed : UINT; (*Product counter for red products*)
		ProductCountBlack : UINT; (*Product counter for black products*)
		ProductCountMetal : UINT; (*Product counter for metal products*)
	END_STRUCT;
END_TYPE

(*global sorter enums*)

TYPE
	ProductTypeEnum : 
		( (*Enumerator to track type of product*)
		ptUNKNOWN := 1, (*Initial state*)
		ptRED := 2, (*Product is red color and plastic*)
		ptBLACK := 3, (*Product is black color and plastic*)
		ptMETAL := 4 (*Product is metallic*)
		);
END_TYPE

(*Sorter interface types*)

TYPE
	SorterCommandType : 	STRUCT  (*Commands to pass to the sorter*)
		ExtendSwitch1 : BOOL; (*Command to extend the first switch*)
		ExtendSwitch2 : BOOL; (*Command to extend the second switch*)
		RetractStopper : BOOL; (*Command to retract the stopper*)
	END_STRUCT;
	SortingRecipeType : 	STRUCT  (*Recipe type for lane allocation*)
		Lane1ProductType : ProductTypeEnum; (*Lane 1 product type allocation*)
		Lane2ProductType : ProductTypeEnum; (*Lane 2 product type allocation*)
		Lane3ProductType : ProductTypeEnum; (*Lane 3 product type allocation*)
	END_STRUCT;
	SorterParameterType : 	STRUCT  (*Parameters for the sorter*)
		LaneAllocationRecipe : SortingRecipeType; (*Lane allocation recipe*)
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
	END_STRUCT;
	SorterType : 	STRUCT  (*Sorter custom type for interface*)
		Cmd : SorterCommandType; (*Command structure for sorter*)
		Par : SorterParameterType; (*Parameter structure for sorter*)
		Status : SorterStatusType; (*Status structure with feedback from sorter*)
	END_STRUCT;
END_TYPE

(*Global enums*)

TYPE
	ProductTypeEnum : 
		( (*Enumerator to track type of product*)
		ptUNKNOWN := 1, (*Initial state*)
		ptRED := 2, (*Product is red color and plastic*)
		ptBLACK := 3, (*Product is black color and plastic*)
		ptMETAL := 4 (*Product is metallic*)
		);
END_TYPE

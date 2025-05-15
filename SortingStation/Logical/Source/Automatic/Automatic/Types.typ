(*state machine enumerator*)

TYPE
	AutomaticSortingEnum : 
		( (*Enum for state machine*)
		asINIT := 1, (*Initial state, homing and setting variables and waiting for start signal*)
		asWAITING := 2, (*Waiting for product to arrive*)
		asCLASSIFYING := 3, (*Identifying and classifying product*)
		asSORTING_PRODUCT := 4, (*Sorting product*)
		asERROR := 5, (*Error state*)
		asINACTIVE := 99
		);
END_TYPE

(*local recipe state machine type*)

TYPE
	RecipeCreateSteps : 
		( (*Steps for creating recipes*)
		IDLE := 0, (*Idle State *)
		CREATE_1 := 10, (*Create first recipe*)
		DONE_1 := 11, (*First recipe done*)
		CREATE_2 := 20, (*Create second recipe*)
		DONE_2 := 21, (*Second recipe done*)
		CREATE_3 := 30, (*Create third recipe*)
		DONE_3 := 31, (*Third recipe done*)
		CREATE_4 := 40, (*Create fourth recipe*)
		DONE_4 := 41, (*Fourth recipe done*)
		CREATE_5 := 50, (*Create fifth recipe*)
		DONE_5 := 51, (*Fifth recipe done*)
		CREATE_6 := 60, (*Create sixth recipe*)
		DONE_6 := 61, (*Sixth recipe done*)
		REFRESH := 62, (*Reload the recipe object*)
		LOAD := 63, (*Load the recipe*)
		ALL_DONE := 70 (*All recipes were created*)
		);
END_TYPE

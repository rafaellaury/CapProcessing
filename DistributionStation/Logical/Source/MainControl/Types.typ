
TYPE
	Trigger : 	STRUCT 
		RisingEdge2 : R_TRIG;
		RisingEdge1 : R_TRIG;
	END_STRUCT;
	MachineState : 	STRUCT 
		State1 : BOOL; (*Svivle Homming*)
		State2 : BOOL; (*Dispense product and pickup*)
		State3 : BOOL; (*Dropping product at the conv*)
		State4 : BOOL; (*Product Ejection*)
		State5 : BOOL; (*Move Svivle to safe position*)
		State6 : BOOL;
		State7 : BOOL;
		State8 : BOOL;
		State9 : BOOL;
		State10 : BOOL;
		State11 : BOOL;
		State12 : BOOL;
		State13 : BOOL;
	END_STRUCT;
END_TYPE

(*global interface types*)

TYPE
	AutomaticCommandType : 	STRUCT  (*Command type for automatic*)
		EnableTimer : BOOL; (*Enable the timer*)
	END_STRUCT;
	AutomaticErrorType : 	STRUCT  (*Errors in automatic mode*)
		Error1 : BOOL; (*ERROR 1 - cannot start automatic mode before homing the station*)
	END_STRUCT;
	AutomaticStatusType : 	STRUCT  (*Status type for automatic*)
		Errors : AutomaticErrorType; (*Errors in Auto mode*)
		SortingReady : BOOL; (*Ready bit for comms*)
	END_STRUCT;
	AutomaticControlType : 	STRUCT  (*Control structure for automatic mode*)
		Cmd : AutomaticCommandType; (*Commands for automatic mode*)
		Status : AutomaticStatusType; (*Status for automatic mode*)
	END_STRUCT;
	AutomaticGeneralInfoType : 	STRUCT  (*General info structure for variables that need to be retained*)
		ProductsTotal : UINT; (*Total number of products*)
		AutomaticModeTime : TIME; (*Time that it has been in automatic mode*)
	END_STRUCT;
END_TYPE

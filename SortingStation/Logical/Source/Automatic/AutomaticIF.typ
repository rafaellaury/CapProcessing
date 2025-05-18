(*global interface types*)

TYPE
	AutomaticCommandType : 	STRUCT  (*Command type for automatic*)
		EnableTimer : BOOL; (*Enable the timer*)
	END_STRUCT;
	AutomaticErrorType : 	STRUCT  (*Errors in automatic mode*)
		Error1 : BOOL; (*ERROR 1 - cannot start automatic mode before homing the station*)
		Error2 : BOOL; (*ERROR 2 - in error state - please home to reset the machine*)
	END_STRUCT;
	AutomaticStatusType : 	STRUCT  (*Status type for automatic*)
		ProductsTotal : UINT; (*Total number of products*)
		AutomaticModeTime : TIME; (*Time that it has been in automatic mode*)
		Errors : AutomaticErrorType; (*Errors in Auto mode*)
	END_STRUCT;
	AutomaticControlType : 	STRUCT  (*Control structure for automatic mode*)
		Cmd : AutomaticCommandType; (*Commands for automatic mode*)
		Status : AutomaticStatusType; (*Status for automatic mode*)
	END_STRUCT;
END_TYPE

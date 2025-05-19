(*local structure types*)

TYPE
	ErrorTypePLK : 	STRUCT  (*Structure to capture all PLK module errors*)
		FPLK_ModuleOk : BOOL; (*Powerlink card on the PPC2100*)
	END_STRUCT;
	ErrorTypeX2X : 	STRUCT  (*Structure to capture all X2X module errors*)
		X20BC0083_ModuleOk : BOOL; (*X2X bus controller communicating*)
		X20DI9371_ModuleOk : BOOL; (*Digital input module communicating*)
		X20PS9400_ModuleOk : BOOL; (*Power supply communicating*)
		X20PD0012_ModuleOk : BOOL; (*Potential distributor communicating*)
		X20PD0011_ModuleOk : BOOL; (*Potential distributor communicating*)
		X20DO9322_ModuleOk : BOOL; (*Digital output module communicating*)
		X20BT9100_ModuleOk : BOOL; (*Bus transmitter communicating*)
		X67SM2436_ModuleOk : BOOL; (*Stepper drive communicating*)
		X2X_ModuleOk : BOOL; (*General ok bit for X2X bus*)
	END_STRUCT;
	ErrorTypeComms : 	STRUCT  (*Structure to capture all errors in comms and of modules*)
		PLK : ErrorTypePLK; (*Powerlink errors*)
		X2X : ErrorTypeX2X; (*X2X errors*)
	END_STRUCT;
END_TYPE

(*Global Enums*)

TYPE
	gOperatingModeEnum : 
		( (*Global operating mode*)
		AUTOMATIC,
		MANUAL
		);
END_TYPE

(*Global types for sorter hardware*)

TYPE
	gSorterDOType : 	STRUCT  (*Sorter digital output type*)
		doExtendSwitch1 : BOOL; (*Command to extend switch 1*)
		doExtendSwitch2 : BOOL; (*Command to extend switch 2*)
		doRetractStopper : BOOL; (*Retract the stopper*)
	END_STRUCT;
	gSorterDIType : 	STRUCT  (*Sorter digital input type*)
		diProdAvail : BOOL; (*Product available*)
		diMetallic : BOOL; (*Product is metallic*)
		diNotBlack : BOOL; (*Product is not black*)
		diLaneFull : BOOL; (*Lane is full of a product*)
		diSwitch1Retracted : BOOL; (*Switch 1 is retracted*)
		diSwitch1Extended : BOOL; (*Switch 1 is extended*)
		diSwitch2Retracted : BOOL; (*Switch 2 is retracted*)
		diSwitch2Extended : BOOL; (*Switch 2 is extended*)
	END_STRUCT;
	gSorterHardwareIOType : 	STRUCT  (*Hardware IO structure*)
		DigitalOutputs : gSorterDOType; (*Digital outputs*)
		DigitalInputs : gSorterDIType; (*Digital inputs*)
	END_STRUCT;
END_TYPE

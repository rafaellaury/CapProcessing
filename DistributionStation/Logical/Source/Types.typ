
TYPE
	IO_Type : 	STRUCT 
		DIn : USINT;
		DOut : USINT;
		AIn : USINT;
		AOut : USINT;
	END_STRUCT;
	DigitalInput : 	STRUCT 
		EjectingCylinderExtended : BOOL;
		EjectingCylinderRetracted : BOOL;
		ProductGripped : BOOL;
		SwivelDriveInMagazinePosition : BOOL;
		SwivelDriveInConveyorPosition : BOOL;
		MagazineEmpty : BOOL;
		ConveyorProductOnStartingPosn : BOOL;
		ConveyorProductOnUnloadingPosn : BOOL;
	END_STRUCT;
	DigitalOutput : 	STRUCT 
		EjectingCylinderPushOutProduct : BOOL;
		VacuumOn : BOOL;
		EjectionImpulseOn : BOOL;
		SwivelDriveToMagazine : BOOL;
		SwivelDriveToConveyor : BOOL;
	END_STRUCT;
	AnalogOutput : 	STRUCT 
	END_STRUCT;
	AnalogInput : 	STRUCT 
	END_STRUCT;
END_TYPE

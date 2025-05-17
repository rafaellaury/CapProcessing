
TYPE
	IO_Control : 	STRUCT 
		DIn : DigitalInputsType;
		DOut : DigitalOutputsType;
	END_STRUCT;
	DigitalInputsType : 	STRUCT 
		EjectingCylinderExtended : BOOL;
		EjectingCylinderRetracted : BOOL;
		ProductGripped : BOOL;
		SwivelDriveInMagazinePosition : BOOL;
		SwivelDriveInConveyorPosition : BOOL;
		MagazineEmpty : BOOL;
		ProductAtStartingPosition : BOOL;
		ProductAtUnloadingPosition : BOOL;
	END_STRUCT;
	DigitalOutputsType : 	STRUCT 
		EjectingCylinderPushOutProduct : BOOL;
		VacuumOn : BOOL;
		EjectionImpulseOn : BOOL;
		SwivelDriveToMagazine : BOOL;
		SwivelDriveToConveyor : BOOL;
	END_STRUCT;
	AnalogInputsType : 	STRUCT 
	END_STRUCT;
	AnalogOutputsType : 	STRUCT 
	END_STRUCT;
	MachnineCtrl : 	STRUCT 
		Mode : MachineModeType;
		ManualCtrl : ManualControlType;
		Command : CommandType;
		Alarm : ARRAY[0..23]OF BOOL;
	END_STRUCT;
	MachineModeType : 	STRUCT 
		ManualMode : BOOL;
		AutoMode : BOOL;
	END_STRUCT;
	ManualControlType : 	STRUCT 
		EjectCylPush : BOOL;
		VacuumOn : BOOL;
		EjectionImpulse : BOOL;
		SwivelToConv : BOOL;
		SwivelToMag : BOOL;
	END_STRUCT;
	CommandType : 	STRUCT 
		Start : BOOL;
		Stop : BOOL;
		Reset : BOOL;
	END_STRUCT;
END_TYPE

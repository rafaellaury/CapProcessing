
TYPE
	IO_Control : 	STRUCT 
		DIn : DigitalInputsType;
		DOut : DigitalOutputsType;
	END_STRUCT;
	DigitalInputsType : 	STRUCT 
		EjectingCylinderExtended : BOOL; (*Cylinder In Posn SN*)
		EjectingCylinderRetracted : BOOL; (*Cylinder Out Posn SN*)
		ProductGripped : BOOL; (*Product At Suction Cup SN*)
		SwivelDriveInMagazinePosition : BOOL; (*Svivle at Magz SN*)
		SwivelDriveInConveyorPosition : BOOL; (*Svivle at Conv SN*)
		MagazineEmpty : BOOL; (*Low on Products*)
		ProductAtStartingPosition : BOOL; (*Prcoduct At Conv Start SN*)
		ProductAtUnloadingPosition : BOOL; (*Product At Conv End SN*)
	END_STRUCT;
	DigitalOutputsType : 	STRUCT 
		EjectingCylinderPushOutProduct : BOOL; (*Cylinder Extend Solenoid*)
		VacuumOn : BOOL; (*Vacuum On Solenoid*)
		EjectionImpulseOn : BOOL; (*Ejection Impulse Solenoid*)
		SwivelDriveToMagazine : BOOL; (*Svivle to Magz DO*)
		SwivelDriveToConveyor : BOOL; (*Svivle to Conv DO*)
	END_STRUCT;
	ParameterType : 	STRUCT 
		Velocity : REAL;
		Acceleration : REAL;
		Decceleration : REAL;
	END_STRUCT;
	MachnineCtrl : 	STRUCT 
		Mode : MachineModeType;
		ManualCtrl : ManualControlType;
		Command : CommandType;
		Alarm : ARRAY[0..23]OF BOOL;
		Status : StatusType;
		MoveSvivle : BOOL;
		Par : ParameterType;
		Override : OverrideType;
		ResetConv : BOOL;
	END_STRUCT;
	MachineModeType : 	STRUCT 
		ManualMode : BOOL;
		AutoMode : BOOL;
	END_STRUCT;
	ManualControlType : 	STRUCT 
		EjectCylPush : BOOL; (*Cylinder In Extended Position*)
		VacuumOn : BOOL; (*Vaccuum ON*)
		EjectionImpulse : BOOL; (*Ejection Valve*)
		SwivelToConv : BOOL; (*Move Svivle to Conveyor*)
		SwivelToMag : BOOL; (*Move Svivle To Magazine*)
		ConvFwd : BOOL; (*Move Convyor Forward*)
		ConvBack : BOOL; (*Move Convyor Backward*)
	END_STRUCT;
	CommandType : 	STRUCT 
		Start : BOOL;
		Stop : BOOL;
		Reset : BOOL;
		Home : BOOL;
	END_STRUCT;
	StatusType : 	STRUCT 
		ReadyToRun : BOOL; (*Hommed And No Alarms*)
		Running : BOOL; (*Actively running*)
		Stopped : BOOL; (*Stop Push Button*)
		ErrorStop : BOOL; (* Stopped For An Acive Error*)
		RecoveryRequired : BOOL; (*Recover From Stop*)
	END_STRUCT;
	OverrideType : 	STRUCT 
		SortingReadySignal : BOOL;
		SortingSendProduct : BOOL;
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

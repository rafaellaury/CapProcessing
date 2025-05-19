(*global interface types*)

TYPE
	DistrCommsCommandType : 	STRUCT  (*Command structure type for OPCUA communication to distrbution station*)
		Connect : BOOL; (*Command to connect*)
		Disconnect : BOOL; (*Command to disconnect*)
	END_STRUCT;
	DistrCommsParameterType : 	STRUCT  (*Parameter structure type for comms*)
		NamespaceUri : STRING[255] := 'urn:B&R/pv/'; (*Namespace URI of distribution station*)
		Endpoint : STRING[255] := 'opc.tcp://10.67.22.6:4840'; (*Endpoint to connect to*)
		ConveyorVelocity : REAL; (*Conveyor velocity for distribution*)
		ConveyorAcceleration : REAL; (*Conveyor accel*)
		ConveyorDeceleration : REAL; (*Conveyor decel*)
	END_STRUCT;
	DistrCommsStatusType : 	STRUCT  (*Status structure type for comms*)
		NamespaceIndex : UINT;
		ConnectionHandle : DWORD;
		ErrorString : USINT;
		ErrorID : DWORD;
		NodeHandles : ARRAY[0..MAX_INDEX_NODELIST]OF DWORD;
		ReadData : USINT;
	END_STRUCT;
END_TYPE

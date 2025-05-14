(*enumerator for opcua state machine*)

TYPE
	OpcUaClientEnum : 
		( (*State machine for OPCUA state machine*)
		uaINIT,
		uaCONNECT,
		uaGET_NS_INDEX,
		uaGET_READ_NODE_HDLS,
		uaGET_WRITE_NONE_HDLS,
		uaREAD,
		uaWAITING_FOR_CMD,
		uaWRITE,
		uaRELEASE_NODES,
		uaDISCONNECT,
		uaERROR
		);
END_TYPE

(*opcua structures*)

TYPE
	AxisClientCmd : 	STRUCT  (*Client command structure*)
		Start : BOOL;
		Stop : BOOL;
		MoveAbsolute : BOOL;
		MoveVelocity : BOOL;
		Connect : BOOL;
		Disconnect : USINT;
	END_STRUCT;
	AxisClientStatus : 	STRUCT 
		AxisStatusString : STRING[80];
		Position : LREAL;
		Velocity : REAL;
		IsHomed : BOOL;
		IsPowered : BOOL;
		MoveActive : BOOL;
		Connected : BOOL;
	END_STRUCT;
	AxisClientType : 	STRUCT 
		Cmd : AxisClientCmd;
		Status : AxisClientStatus;
	END_STRUCT;
	OpcUaServerStruct : 	STRUCT 
		NamespaceIndex : UINT;
		NamespaceUri : STRING[255] := 'urn:B&R/pv/';
		Endpoint : STRING[255] := 'opc.tcp://10.67.22.6:4840';
		ConnectionHandle : DWORD;
		ErrorID : DWORD;
		NodeHandles : ARRAY[0..MAX_INDEX_NODELIST]OF DWORD;
	END_STRUCT;
END_TYPE

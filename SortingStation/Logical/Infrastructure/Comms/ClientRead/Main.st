(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     April 28, 2025/11:44 AM 
 * Description: Implementing OPCUA client
 *********************************************************************************)

PROGRAM _INIT
	 
END_PROGRAM

PROGRAM _CYCLIC
	// OPCUA connection state machine
	CASE OpcUaClientState OF
		// Initial state
		uaINIT:
			ConfigureSessionInfo;
			IF Connect THEN
				OpcUaClientState := uaCONNECT;
			END_IF
			// Connection state
		uaCONNECT:
			ConnectToServer;
			IF UA_Connect_0.Done THEN
				OpcUaClientState := uaGET_NS_INDEX;
			END_IF
			IF UA_Connect_0.Error THEN
				OpcUaClientState := uaERROR;
			END_IF
			// Get the namespace index
		uaGET_NS_INDEX:
			GetNamespaceIndex;
			IF UA_GetNamespaceIndex_0.Done THEN
				OpcUaClientState := uaGET_READ_NODE_HDLS;
			END_IF
			IF UA_GetNamespaceIndex_0.Error THEN
				OpcUaClientState := uaERROR;
			END_IF
			// Get the read node handles
		uaGET_READ_NODE_HDLS:
			// Call action
			BuildNodeIDList;
			// Call function
			UA_NodeGetReadHandleList_0(Execute := TRUE,
			ConnectionHdl := OpcuaServer.ConnectionHandle,
			NodeIDCount := ReadNodeIDCount,
			NodeIDs := ReadNodeIDs,
			Timeout := T#10s);
			IF NOT UA_NodeGetReadHandleList_0.Busy THEN
				IF UA_NodeGetReadHandleList_0.Done THEN
					OpcuaServer.ErrorID := 0;
					OpcuaServer.NodeHandles := UA_NodeGetReadHandleList_0.NodeHdls;
					OpcUaClientState := uaREAD;
				END_IF
				IF (UA_NodeGetReadHandleList_0.Error = 1) THEN
					OpcUaClientState := uaERROR;
					OpcuaServer.ErrorID := UA_NodeGetReadHandleList_0.ErrorID;
					OpcuaServer.NodeHandles[0] := 0;
				END_IF
			END_IF	
	
		uaREAD:
			UA_ReadList_0(Execute := TRUE,ConnectionHdl := OpcuaServer.ConnectionHandle,
			NodeHdlCount := ReadNodeHdlCount,
			NodeHdls := OpcuaServer.NodeHandles,
			Timeout := T#10s,
			Variables := VariableReadList);
			IF NOT UA_ReadList_0.Busy THEN
				IF UA_ReadList_0.Done THEN
					OpcuaServer.ErrorID := 0;
					OpcUaClientState := uaWAITING_FOR_CMD;
				END_IF
				IF (UA_ReadList_0.Error = 1) THEN
					OpcUaClientState := uaERROR;
					OpcuaServer.ErrorID := UA_ReadList_0.ErrorID;
				END_IF
			END_IF
			
				
		uaWAITING_FOR_CMD:
			// do nothing	
	
	END_CASE
			
END_PROGRAM

PROGRAM _EXIT

END_PROGRAM


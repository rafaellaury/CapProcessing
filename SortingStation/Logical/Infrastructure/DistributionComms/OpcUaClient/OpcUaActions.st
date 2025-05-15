(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     April 28, 2025/11:43 AM 
 * Description: OPCUA client helper actions
 *********************************************************************************)

// Action to set up basic OPCUA session info
ACTION ConfigureSessionInfo: 
	SessionConnectInfo_0.SecurityMsgMode := UASecurityMsgMode_None;
	SessionConnectInfo_0.SecurityPolicy := UASecurityPolicy_None;
	SessionConnectInfo_0.TransportProfile := UATP_UATcp;
	SessionConnectInfo_0.UserIdentityToken.UserIdentityTokenType := UAUITT_Anonymous;
	//	SessionConnectInfo_0.UserIdentityToken.TokenParam1 := 'admin';
	//	SessionConnectInfo_0.UserIdentityToken.TokenParam2 := 'password';
	SessionConnectInfo_0.SessionTimeout := T#1m;
	SessionConnectInfo_0.MonitorConnection := T#10s;
END_ACTION

// Action to connect to servers
ACTION ConnectToServer:
	UA_Connect_0(Execute := TRUE,
	ServerEndpointUrl := OpcuaServer.Endpoint,
	SessionConnectInfo := SessionConnectInfo_0,
	Timeout := T#10s);
	IF NOT UA_Connect_0.Busy THEN
		ClientAxis.Cmd.Connect := FALSE;
		IF UA_Connect_0.Done THEN
			OpcuaServer.ErrorID := 0;
			OpcuaServer.ConnectionHandle := UA_Connect_0.ConnectionHdl;
		END_IF
		IF UA_Connect_0.Error THEN
			OpcuaServer.ErrorID := UA_Connect_0.ErrorID;
			OpcuaServer.ConnectionHandle := 0;
		END_IF
	END_IF
END_ACTION

// Action to get the Namespace Index of the Server
ACTION GetNamespaceIndex:
	UA_GetNamespaceIndex_0(Execute := TRUE,
	ConnectionHdl := OpcuaServer.ConnectionHandle,
	NamespaceUri := OpcuaServer.NamespaceUri,
	Timeout := T#5s);
	IF NOT UA_GetNamespaceIndex_0.Busy THEN
		IF UA_GetNamespaceIndex_0.Done THEN
			OpcuaServer.ErrorID := 0;
			OpcuaServer.NamespaceIndex := UA_GetNamespaceIndex_0.NamespaceIndex;
		END_IF
		IF UA_GetNamespaceIndex_0.Error THEN
			OpcuaServer.ErrorID := UA_GetNamespaceIndex_0.ErrorID;
			OpcuaServer.NamespaceIndex := 0;
		END_IF
	END_IF
END_ACTION

// Action to build the NodeID list
ACTION BuildNodeIDList:
	ReadNodeIDs[0].NamespaceIndex := OpcuaServer.NamespaceIndex;
	ReadNodeIDs[0].Identifier := '::OpcUaTest:Test';
	ReadNodeIDs[0].IdentifierType := UAIdentifierType_String;
	(*		
	ReadNodeIDs[1].NamespaceIndex := OpcuaServer.NamespaceIndex;
	ReadNodeIDs[1].Identifier := '::AxisServer:Axis1:Velocity';
	ReadNodeIDs[1].IdentifierType := UAIdentifierType_String;
			
	ReadNodeIDs[2].NamespaceIndex := OpcuaServer.NamespaceIndex;
	ReadNodeIDs[2].Identifier := '::AxisServer:Axis1:Position';
	ReadNodeIDs[2].IdentifierType := UAIdentifierType_String;
			
	ReadNodeIDs[3].NamespaceIndex := OpcuaServer.NamespaceIndex;
	ReadNodeIDs[3].Identifier := '::AxisServer:Axis1:IsPowered';
	ReadNodeIDs[3].IdentifierType := UAIdentifierType_String;
			
	ReadNodeIDs[4].NamespaceIndex := OpcuaServer.NamespaceIndex;
	ReadNodeIDs[4].Identifier := '::AxisServer:Axis1:IsHomed';
	ReadNodeIDs[4].IdentifierType := UAIdentifierType_String;
			
	ReadNodeIDs[5].NamespaceIndex := OpcuaServer.NamespaceIndex;
	ReadNodeIDs[5].Identifier := '::AxisServer:Axis1:MoveActive';
	ReadNodeIDs[5].IdentifierType := UAIdentifierType_String;
	*)
	ReadNodeIDCount := 1;
END_ACTION

(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 17, 2025/5:10 PM 
 * Description: HMI helper task to send and receive data to visualization and control
 *********************************************************************************)

PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	IF StopMode THEN
		AutomaticMode := FALSE;
		HomingMode := FALSE;
		ManualMode := FALSE;
		ActiveMode := 'Machine Stopped';
	END_IF
	
	IF AutomaticMode AND StartMode THEN
		HomingMode := FALSE;
		ManualMode := FALSE;
		ActiveMode := 'Automatic Mode';
		gOperatingMode.AutoMode := TRUE;
		gOperatingMode.HomingMode := FALSE;
		gOperatingMode.ManualMode := FALSE;
		ManualEnable := FALSE;
		OpModeState := omAUTOMATIC;
	ELSIF HomingMode AND StartMode THEN
		AutomaticMode := FALSE;
		ManualMode := FALSE;
		ActiveMode := 'Homing Mode';
		gOperatingMode.HomingMode := TRUE;
		// Keeping automatic mode true to retain the state
		gOperatingMode.ManualMode := FALSE;
		ManualEnable := FALSE;
		OpModeState := omHOMING;
	ELSIF ManualMode AND StartMode THEN
		AutomaticMode := FALSE;
		HomingMode := FALSE;
		ActiveMode := 'Manual Mode';
		gOperatingMode.ManualMode := TRUE;
		gOperatingMode.HomingMode := FALSE;
		gOperatingMode.AutoMode := FALSE;

		ManualEnable := TRUE;
		OpModeState := omMANUAL;
	END_IF
	
	
	CASE OpModeState OF
		omMANUAL:
			
			
			
			IF ManualControl.Status.Error THEN
				ErrorMessageManualPage := 'ERROR: Illegal movement, see guidelines';
			ELSE
				ErrorMessageManualPage := 'Normal operation, no errors present';
			END_IF
			IF ManualControl.Status.DestinationLane = 1 THEN
				RequiredSwitch := 'Switch 1';
			ELSIF ManualControl.Status.DestinationLane = 2 THEN
				RequiredSwitch := 'Switch 2';
			ELSIF ManualControl.Status.DestinationLane = 3 THEN
				RequiredSwitch := 'None';
			ELSE
				RequiredSwitch := 'No product identified';
			END_IF
			
		omAUTOMATIC:
			IF SorterControl.Status.ProductType <> ptUNKNOWN THEN
				AutoIdentifiedProduct := TRUE;
			ELSE
				AutoIdentifiedProduct := FALSE;
			END_IF
			
			
		omHOMING:
    END_CASE
	
	//IF AutomaticController.Status.Errors.Error1 THEN
		
	
	IF SorterControl.Status.ProductType = ptRED THEN
		ProductRed := TRUE;
		ProductBlack := FALSE;
		ProductMetal := FALSE;
	ELSIF SorterControl.Status.ProductType = ptBLACK THEN
		ProductBlack := TRUE;
		ProductRed := FALSE;
		ProductMetal := FALSE;
	ELSIF SorterControl.Status.ProductType = ptMETAL THEN
		ProductMetal := TRUE;
		ProductRed := FALSE;
		ProductBlack := FALSE;
	ELSE
		ProductMetal := FALSE;
		ProductRed := FALSE;
		ProductBlack := FALSE;
	END_IF
	
	
	IF SorterControl.Par.LaneAllocationRecipe.Lane1ProductType = ptRED THEN
		RecipeItemLane1 := 'RED';
	ELSIF SorterControl.Par.LaneAllocationRecipe.Lane1ProductType = ptBLACK THEN
		RecipeItemLane1 := 'BLACK';
	ELSIF SorterControl.Par.LaneAllocationRecipe.Lane1ProductType = ptMETAL THEN
		RecipeItemLane1 := 'METAL';
	END_IF
	IF SorterControl.Par.LaneAllocationRecipe.Lane2ProductType = ptRED THEN
		RecipeItemLane2 := 'RED';
	ELSIF SorterControl.Par.LaneAllocationRecipe.Lane2ProductType = ptBLACK THEN
		RecipeItemLane2 := 'BLACK';
	ELSIF SorterControl.Par.LaneAllocationRecipe.Lane2ProductType = ptMETAL THEN
		RecipeItemLane2 := 'METAL';
	END_IF
	IF SorterControl.Par.LaneAllocationRecipe.Lane3ProductType = ptRED THEN
		RecipeItemLane3 := 'RED';
	ELSIF SorterControl.Par.LaneAllocationRecipe.Lane3ProductType = ptBLACK THEN
		RecipeItemLane3 := 'BLACK';
	ELSIF SorterControl.Par.LaneAllocationRecipe.Lane3ProductType = ptMETAL THEN
		RecipeItemLane3 := 'METAL';
	END_IF
	
			
	
	AutomaticMode;
	HomingMode;
	ManualMode;
	
	gReset := ResetMode;
	
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM


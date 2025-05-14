(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 14, 2025/1:30 PM 
 * Description: Recipe system to pick the lane allocation for different product types
 *********************************************************************************)

PROGRAM _INIT
	
	// Initialize MpRecipeXml function block
	MpRecipeXml_0.Enable := TRUE;
	MpRecipeXml_0.MpLink := ADR(MpLinkSORTING_gRecipeXml);
	MpRecipeXml_0.DeviceName := ADR('USER');
	// Initialize MpRecipeRegPar function block and assign PV
	MpRecipeRegPar_0.Enable := TRUE;
	MpRecipeRegPar_0.MpLink := ADR(MpLinkSORTING_gRecipeXml);
	MpRecipeRegPar_0.PVName := ADR('::SorterControl.Par.LaneAllocationRecipe');
	// Initialize MpRecipeUI function block
	MpRecipeUI_0.Enable := TRUE;
	MpRecipeUI_0.MpLink := ADR(MpLinkSORTING_gRecipeXml);
	MpRecipeUI_0.UIConnect := ADR(MpRecipeUIConnect);
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	// Calling selected value for use in other tasks
	selectedValue;
	// Call CreateRecipe action to create default recipe
	CreateRecipes;
	// Load default recipe into PV
	MpRecipeUIConnect.Recipe.Load;
	// Cyclically call all function blocks
	MpRecipeXml_0();
	MpRecipeRegPar_0();
	MpRecipeUI_0();
	 
END_PROGRAM

PROGRAM _EXIT
	
	// Disable MpRecipeXml function block
	MpRecipeXml_0.Enable := FALSE;
	MpRecipeXml_0();
	// Disable MpRecipeRegPar function block
	MpRecipeRegPar_0.Enable := FALSE;
	MpRecipeRegPar_0();
	// Disable MpRecipeUI function block
	MpRecipeUI_0.Enable := FALSE;
	MpRecipeUI_0();
		
END_PROGRAM


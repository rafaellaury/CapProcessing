(*********************************************************************************
 * Copyright:   B&R Industrial Automation GmbH 
 * Author:      lauryr 
 * Created:     May 7, 2025/9:39 AM 
 * Description: Action file to create default recipes
 *********************************************************************************)

ACTION CreateRecipes: 
	
	// create default recipes in case they don't exist yet on the target
	// recipes are created by using the the MpRecipeXml instance interface
	
	CASE RecipeCreateStep OF
		IDLE:	
			
			IF MpRecipeXml_0.Active = TRUE AND MpRecipeUI_0.Active = TRUE THEN
				
				// check for load error > triggers the default creation > if no error everything is ready to go
				IF (MpRecipeUIConnect.Recipe.List.Names[0] = '') THEN
					MpRecipeXml_0.Load 			:= FALSE;
					MpRecipeXml_0.ErrorReset 	:= TRUE;
					RecipeCreateStep 			:= CREATE_1;
					
				ELSE
					MpRecipeUIConnect.Recipe.Load := TRUE;
				END_IF
				
				// reset the load command from the init when recipe was loaded successfully
				IF (MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_LOAD) AND (MpRecipeUIConnect.Recipe.Load = TRUE) THEN
					MpRecipeUIConnect.Recipe.Load			:= FALSE;
					RecipeCreateStep						:= ALL_DONE;
				END_IF

			END_IF
			
		CREATE_1:	// Default recipe 
			MpRecipeXml_0.ErrorReset 			:= FALSE;
			
			// Setting default values for RBM.xml
			SorterControl.Par.LaneAllocationRecipe.Lane1ProductType := ptRED;
			SorterControl.Par.LaneAllocationRecipe.Lane2ProductType := ptBLACK;
			SorterControl.Par.LaneAllocationRecipe.Lane3ProductType := ptMETAL;
			
			MpRecipeXml_0.FileName 				:= ADR(RECIPE_1_FILENAME);
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_1;
			
		DONE_1:	// when CommandDone GoTo next step
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 			:= CREATE_2;
				MpRecipeXml_0.Save			:= FALSE;
			END_IF;
			
		CREATE_2:	// Default recipe 
			MpRecipeXml_0.ErrorReset 			:= FALSE;
			
			// Setting default values for RMB.xml
			SorterControl.Par.LaneAllocationRecipe.Lane1ProductType := ptRED;
			SorterControl.Par.LaneAllocationRecipe.Lane2ProductType := ptMETAL;
			SorterControl.Par.LaneAllocationRecipe.Lane3ProductType := ptBLACK;
			
			MpRecipeXml_0.FileName 				:= ADR(RECIPE_2_FILENAME);
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_2;
			
		DONE_2:	// when CommandDone GoTo next step
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 			:= CREATE_3;
				MpRecipeXml_0.Save			:= FALSE;
			END_IF;
			
		CREATE_3:	// Default recipe 
			MpRecipeXml_0.ErrorReset 			:= FALSE;
			
			// Setting default values for BRM.xml
			SorterControl.Par.LaneAllocationRecipe.Lane1ProductType := ptBLACK;
			SorterControl.Par.LaneAllocationRecipe.Lane2ProductType := ptRED;
			SorterControl.Par.LaneAllocationRecipe.Lane3ProductType := ptMETAL;
			
			MpRecipeXml_0.FileName 				:= ADR(RECIPE_3_FILENAME);
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_3;
			
		DONE_3:	// when CommandDone GoTo next step
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 			:= CREATE_4;
				MpRecipeXml_0.Save			:= FALSE;
			END_IF;
			
		CREATE_4:	// Default recipe 
			MpRecipeXml_0.ErrorReset 			:= FALSE;
			
			// Setting default values for BMR.xml
			SorterControl.Par.LaneAllocationRecipe.Lane1ProductType := ptBLACK;
			SorterControl.Par.LaneAllocationRecipe.Lane2ProductType := ptMETAL;
			SorterControl.Par.LaneAllocationRecipe.Lane3ProductType := ptRED;
			
			MpRecipeXml_0.FileName 				:= ADR(RECIPE_4_FILENAME);
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_4;
			
		DONE_4:	// when CommandDone GoTo next step
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 			:= CREATE_5;
				MpRecipeXml_0.Save			:= FALSE;
			END_IF;
			
		CREATE_5:	// Default recipe 
			MpRecipeXml_0.ErrorReset 			:= FALSE;
			
			// Setting default values for BMR.xml
			SorterControl.Par.LaneAllocationRecipe.Lane1ProductType := ptMETAL;
			SorterControl.Par.LaneAllocationRecipe.Lane2ProductType := ptRED;
			SorterControl.Par.LaneAllocationRecipe.Lane3ProductType := ptBLACK;
			
			MpRecipeXml_0.FileName 				:= ADR(RECIPE_5_FILENAME);
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= DONE_5;
			
		DONE_5:	// when CommandDone GoTo next step
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 			:= CREATE_6;
				MpRecipeXml_0.Save			:= FALSE;
			END_IF;
		
		CREATE_6:	// Default recipe 
			MpRecipeXml_0.ErrorReset 			:= FALSE;
			
			// Setting default values for DefaultRecipe.xml
			SorterControl.Par.LaneAllocationRecipe.Lane1ProductType := ptMETAL;
			SorterControl.Par.LaneAllocationRecipe.Lane2ProductType := ptBLACK;
			SorterControl.Par.LaneAllocationRecipe.Lane3ProductType := ptRED;
			
			MpRecipeXml_0.FileName 				:= ADR(RECIPE_6_FILENAME);
			MpRecipeXml_0.Save					:= TRUE;
			RecipeCreateStep 					:= REFRESH;
			
		REFRESH:	// refresh the recipe list to make sure all the recipes are shown
			
			IF(MpRecipeXml_0.CommandDone) THEN
				RecipeCreateStep 					:= LOAD;
				MpRecipeXml_0.Save					:= FALSE;
				MpRecipeUIConnect.Recipe.Refresh 	:= TRUE;
			END_IF;	
		
		LOAD:	// load the first recipe to have a default recipe
			
			IF(MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_IDLE)THEN
				MpRecipeUIConnect.Recipe.Load 		:= TRUE;
				RecipeCreateStep 					:= DONE_6;
			END_IF
			
		DONE_6:	// if loading was successful the creation of the recipes is done
		
			IF(MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_IDLE)THEN
				RecipeCreateStep 					:= ALL_DONE;
				MpRecipeUIConnect.Recipe.Refresh 	:= FALSE;
				MpRecipeUIConnect.Recipe.Load 		:= FALSE;
			END_IF;		
		
	END_CASE;

END_ACTION

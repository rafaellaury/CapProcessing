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
			
			// Setting default values for DefaultRecipe.xml
			SorterControl.Par.LaneAllocationRecipe.Lane1ProductType := ptRED;
			SorterControl.Par.LaneAllocationRecipe.Lane2ProductType := ptBLACK;
			SorterControl.Par.LaneAllocationRecipe.Lane3ProductType := ptMETAL;
			
			MpRecipeXml_0.FileName 				:= ADR(DEFAULT_RECIPE_FILENAME);
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
				RecipeCreateStep 					:= DONE_4;
			END_IF
			
		DONE_4:	// if loading was successful the creation of the recipes is done
		
			IF(MpRecipeUIConnect.Status = mpRECIPE_UI_STATUS_IDLE)THEN
				RecipeCreateStep 					:= ALL_DONE;
				MpRecipeUIConnect.Recipe.Refresh 	:= FALSE;
				MpRecipeUIConnect.Recipe.Load 		:= FALSE;
			END_IF;		
		
	END_CASE;

	(*
	//Edit Recipe
	IF DialogOpen THEN
		
		EditIngredients.Milk 				:= CoffeeIngredients.Milk;
		EditIngredients.Water 				:= CoffeeIngredients.Water;
		EditIngredients.Sugar 				:= CoffeeIngredients.Sugar;
		EditIngredients.Coffee 				:= CoffeeIngredients.Coffee;
		DialogOpen 							:= FALSE;
	END_IF
	
	IF SaveRecipe THEN
		
		CoffeeIngredients.Milk 				:= EditIngredients.Milk;
		CoffeeIngredients.Water 			:= EditIngredients.Water;
		CoffeeIngredients.Sugar 			:= EditIngredients.Sugar;
		CoffeeIngredients.Coffee 			:= EditIngredients.Coffee;
	END_IF
*)

END_ACTION

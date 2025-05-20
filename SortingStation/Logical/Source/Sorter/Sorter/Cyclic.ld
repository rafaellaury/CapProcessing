PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="Action to read all Digital Inputs at the beginning of the Task" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="ReadDIAction"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="If both Switches are Retracted and the Stopper is extended, the status is considered homed." row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.Switch1Retracted"/>
			<contact type="open" name="SorterControl.Status.Switch2Retracted"/>
			<contact type="closed" name="SorterControl.Cmd.RetractStopper"/>
			<coil type="set" name="SorterControl.Status.IsHomed"/>
		</row>
	</network>
	<network label="" comment="In the opposite case, the Sorter is considered Not homed" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.Switch1Extended"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.IsHomed"/>
		</row>
		<row>
			<contact type="open" name="SorterControl.Status.Switch2Extended" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="SorterControl.Cmd.RetractStopper" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="If the Home command is received, reset all commands. Internal home is a separate command called from Sorter to not interfere with external calls" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Cmd.Home"/>
			<contact type="closed" name="SorterControl.Status.IsHomed"/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.RetractStopper"/>
		</row>
		<row>
			<contact type="open" name="SorterControl.Cmd.InternalHome" or="true"/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.ExtendSwitch1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.ExtendSwitch2"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterControl.Status.ProcessDone"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.Home"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.Home"/>
		</row>
	</network>
	<network label="" comment="If Reset command is called, call InternalHome and move the ProductType to ptUNKNOWN. Reset all Lane booleans and Errors." row="11" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Cmd.Reset"/>
			<line/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Cmd.InternalHome"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane1"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane2"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane3"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="CheckLanes"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.Errors.Error1"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.Errors.Error2"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.Errors.Error3"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.Error"/>
		</row>
	</network>
	<network label="" comment="INIT STATE - Home the Sorter if not done already, and initialize all variables" row="10" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.Init"/>
			<contact type="closed" name="SorterControl.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Cmd.InternalHome"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane1"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane2"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane3"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="CheckLanes"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="SorterControl.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.InitDone"/>
		</row>
		<row>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.DestLane"/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Once finished, set InitDone to true" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.Init"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.InitDone"/>
		</row>
	</network>
	<network label="" comment="WAITING STATE - once ProductAvailable is true, a Product is ready to be classified. If LaneFull command is seen here, there is an error." row="3" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.Waiting"/>
			<contact type="open" name="SorterControl.Status.ProductAvailable"/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.WaitingDone"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="SorterControl.Status.LaneFull"/>
			<line/>
			<coil type="set" name="SorterControl.Status.Errors.Error3"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.Error"/>
		</row>
	</network>
	<network label="" comment="Once Waiting is done, set WaitingDone to true" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.Waiting"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.WaitingDone"/>
		</row>
	</network>
	<network label="" comment="CLASSIFYING STATE - Setting the product type based on enumerator values:
1: UNKNOWN
2 : RED
3: BLACK
4: METAL" row="7" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="zzTON00000004" type="TON"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.Classifying"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<contact type="open" name="SorterControl.Status.ProductMetallic"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<coil type="set" name="CheckLanes"/>
		</row>
		<row>
			<analog type="input" name="T#300ms"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<analog type="input" name="4"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.ProductMetallic"/>
			<contact type="open" name="SorterControl.Status.ProductNotBlack"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<coil type="set" name="CheckLanes"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="2"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.ProductNotBlack"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<coil type="set" name="CheckLanes"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="3"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
		</row>
	</network>
	<network label="" comment="Step two of classifying: once the product type is known, check the destination lane for that type of material and set the destination accordingly" row="9" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.Classifying"/>
			<contact type="open" name="CheckLanes"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.ClassifyingDone"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane1" or="true"/>
			<contact type="open" name="Lane1"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane1ProductType"/></function>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.DestLane"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line or="true"/>
			<contact type="open" name="Lane2"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane2" or="true"/>
			<analog type="input" name="2"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.DestLane"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane2ProductType"/></function>
			<empty or="true"/>
			<contact type="open" name="Lane3"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line or="true"/>
			<analog type="input" name="3"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.DestLane"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane3"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane3ProductType"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Once Classifying is done, set ClassifyingDone to true" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.Classifying"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.ClassifyingDone"/>
		</row>
	</network>
	<network label="" comment="SORTING_PRODUCT STATE - Depending on which lane the cap must go to, extend the correct switch, or none of them (Lane 1 = Switch 1, Lane 2 = Switch 2, Lane 3 = no switch" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProduct"/>
			<contact type="open" name="Lane1"/>
			<line/>
			<coil type="set" name="SorterControl.Cmd.ExtendSwitch1"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="closed" name="Lane1"/>
			<contact type="open" name="Lane2"/>
			<coil type="set" name="SorterControl.Cmd.ExtendSwitch2"/>
		</row>
	</network>
	<network label="" comment="If the sorter is ready to go, retract the stopper" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProduct"/>
			<contact type="open" name="SorterControl.Status.Switch1Extended"/>
			<line/>
			<coil type="set" name="SorterControl.Cmd.RetractStopper"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="SorterControl.Status.Switch2Extended" or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="Lane3" or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Wait one second after the stopper has been retracted, and then extend it again. If Lane 1, retract the switch so that the cap can fit into the lane." row="3" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="zzTON00000000" type="TON"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProduct"/>
			<contact type="open" name="SorterControl.Cmd.RetractStopper"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.RetractStopper"/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="T#1s"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<contact type="open" name="Lane1"/>
			<coil type="reset" name="SorterControl.Cmd.ExtendSwitch1"/>
		</row>
	</network>
	<network label="" comment="Once the LaneFull sensor has been seen, the Sorting is complete, and the ProductDone state is set to true.
If more than five seconds pass by and it has not gone past the sensor, trigger Error 1, product is lost or stuck.
If three seconds have gone by and there is still a product behind the stopper, trigger Error 2." row="7" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProduct"/>
			<contact type="open" name="SorterControl.Status.LaneFull"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.SortingProductDone"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<functionblock position="header" name="zzTON00000002" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.LaneFull"/>
			<line/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.Error"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="T#5s"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="set" name="SorterControl.Status.Errors.Error1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<functionblock position="header" name="zzTON00000003" type="TON"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<contact type="open" name="SorterControl.Status.ProductAvailable"/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.Error"/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="T#1s"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<line/>
			<coil type="set" name="SorterControl.Status.Errors.Error2"/>
		</row>
	</network>
	<network label="" comment="Update the product count once the Sorting is complete" row="2" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.SortingProduct"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.SortingProductDone"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="negative transition" name="SorterControl.Status.SorterState.SortingProductDone"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="CountProducts"/></actionblock>
			<empty/>
		</row>
	</network>
	<network label="ane" comment="Logic for MANUAL MODE - same as for Automatic mode, but with different triggers. If the product has been classified, then reset the lane variables." row="11" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="zzTON00000001" type="TON"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.ClassifyProduct"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<contact type="open" name="SorterControl.Status.ProductMetallic"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<coil type="set" name="CheckLanes"/>
		</row>
		<row>
			<empty or="true"/>
			<analog type="input" name="T#300ms"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<analog type="input" name="4"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.ProductMetallic"/>
			<contact type="open" name="SorterControl.Status.ProductNotBlack"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<coil type="set" name="CheckLanes"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="2"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.ProductNotBlack"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<coil type="set" name="CheckLanes"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="3"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductType"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="ManualControl.Status.ProductClassified"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="CheckLanes"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane2"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="Lane3"/>
		</row>
	</network>
	<network label="" comment="Check the lanes and assign the appropriate destination lane." row="9" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="CheckLanes"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="ManualControl.Status.ProductClassified"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane1" or="true"/>
			<contact type="open" name="Lane1"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane1ProductType"/></function>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ManualControl.Status.DestinationLane"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line or="true"/>
			<contact type="open" name="Lane2"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane2" or="true"/>
			<analog type="input" name="2"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ManualControl.Status.DestinationLane"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane2ProductType"/></function>
			<empty or="true"/>
			<contact type="open" name="Lane3"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line or="true"/>
			<analog type="input" name="3"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ManualControl.Status.DestinationLane"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane3"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane3ProductType"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="If in Automatic Mode or in Homing Mode, write out to the DOs." row="2" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.AutoMode"/>
			<actionblock position="topbottom"><input qualifier="N"/><output name="WriteDOAction"/></actionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="gOperatingMode.HomingMode" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM

















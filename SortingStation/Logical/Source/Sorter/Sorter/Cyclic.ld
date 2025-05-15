PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="ReadDIAction"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Cmd.Home"/>
			<contact type="closed" name="SorterControl.Status.IsHomed"/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.RetractStopper"/>
		</row>
		<row>
			<empty/>
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
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.Switch1Retracted"/>
			<contact type="open" name="SorterControl.Status.Switch2Retracted"/>
			<line/>
			<coil type="set" name="SorterControl.Status.IsHomed"/>
		</row>
	</network>
	<network label="" comment="" row="8" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Cmd.Reset"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Cmd.Enable"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="positive transition" name="SorterControl.Cmd.Home"/>
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
	</network>
	<network label="" comment="" row="8" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.Init"/>
			<contact type="closed" name="SorterControl.Status.IsHomed"/>
			<line/>
			<line/>
			<coil type="positive transition" name="SorterControl.Cmd.Home"/>
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
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.Init"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.InitDone"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.Waiting"/>
			<contact type="open" name="SorterControl.Status.ProductAvailable"/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.WaitingDone"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.Waiting"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.WaitingDone"/>
		</row>
	</network>
	<network label="" comment="Setting the product type based on enumerator values:
1: UNKNOWN
2 : RED
3: BLACK
4: METAL" row="7" column="0" commented="0">
		<row>
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
	<network label="" comment="" row="9" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.Classifying"/>
			<contact type="open" name="CheckLanes"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.ClassifyingDone"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane1" or="true"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane1ProductType"/></function>
			<empty or="true"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line or="true"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane2" or="true"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane2ProductType"/></function>
			<empty or="true"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<line or="true"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="56"/></function>
			<analog type="output" name="Lane3"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = SorterControl.Par.LaneAllocationRecipe.Lane3ProductType"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.Classifying"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.ClassifyingDone"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProduct"/>
			<contact type="open" name="Lane1"/>
			<line/>
			<coil type="set" name="SorterControl.Cmd.ExtendSwitch1"/>
		</row>
		<row>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SorterControl.Status.IsHomed"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="closed" name="Lane1"/>
			<contact type="open" name="Lane2"/>
			<coil type="set" name="SorterControl.Cmd.ExtendSwitch2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="reset" name="SorterControl.Status.IsHomed"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProduct"/>
			<contact type="open" name="SorterControl.Status.Switch1Extended"/>
			<line/>
			<coil type="set" name="SorterControl.Cmd.RetractStopper"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="SorterControl.Status.Switch2Extended" or="true"/>
			<line/>
			<coil type="reset" name="SorterControl.Status.IsHomed"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="Lane3" or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
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
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProduct"/>
			<contact type="open" name="SorterControl.Status.LaneFull"/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.SortingProductDone"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="closed" name="SorterControl.Status.SorterState.SortingProduct"/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.SortingProductDone"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<actionblock position="topbottom"><input qualifier="N"/><output name="WriteDOAction"/></actionblock>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM






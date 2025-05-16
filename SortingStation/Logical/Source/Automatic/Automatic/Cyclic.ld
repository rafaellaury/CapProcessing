PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="closed" name="gOperatingMode.AutoMode"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SortingStationState &lt;&gt; asERROR"/></function>
			<analog type="input" name="99"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="gOperatingMode.AutoMode"/>
			<contact type="open" name="gStart"/>
			<contact type="open" name="HomingControl.Status.StationHomed"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SortingStationState = asINACTIVE"/></function>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="AutomaticController.Cmd.EnableTimer"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="HomingControl.Status.StationHomed"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="AutomaticController.Status.Errors.Error1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="5"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.AutoMode"/>
			<contact type="open" name="gStop"/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Cmd.Reset"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="ConveyorController.Cmd.Stop"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.Start"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="AutomaticController.Cmd.EnableTimer"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="99"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
	</network>
	<network label="" comment="" row="8" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.AutoMode"/>
			<contact type="open" name="gReset"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AutomaticController.Status.ProductsTotal"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductCountRed"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductCountBlack"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SorterControl.Status.ProductCountMetal"/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="zzTON00000000" type="TON"/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="gOperatingMode.AutoMode"/>
			<contact type="open" name="AutomaticController.Cmd.EnableTimer"/>
			<functionblock position="top" type="TON"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="closed" name="gReset"/>
			<line/>
			<functionblock position="middle" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="T#2d"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<analog type="output" name="AutomaticController.Status.AutomaticModeTime"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.AutoMode"/>
			<contact type="open" name="ConveyorController.Status.Error"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="5"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="HomingControl.Status.StationHomed"/>
		</row>
	</network>
	<network label="" comment="INIT STATE" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.Init"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!" or="true"><input name="&lt;!SortingStationState = asINIT"/></function>
			<contact type="open" name="SorterControl.Status.SorterState.InitDone"/>
			<contact type="open" name="ProductArriving"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="2"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.Init"/>
		</row>
	</network>
	<network label="" comment="WAITING STATE" row="6" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.Waiting"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!" or="true"><input name="&lt;!SortingStationState = asWAITING"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="ConveyorController.Cmd.Start"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.Stop"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="ConveyorController.Status.MoveActive"/>
			<contact type="open" name="SorterControl.Status.SorterState.WaitingDone"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="3"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.Waiting"/>
		</row>
	</network>
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.Classifying"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!" or="true"><input name="&lt;!SortingStationState = asCLASSIFYING"/></function>
			<contact type="open" name="SorterControl.Status.SorterState.ClassifyingDone"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="SorterControl.Status.SorterState.Error"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty or="true"/>
			<analog type="input" name="4"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="5"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState" or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.Classifying"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.Waiting"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="HomingControl.Status.StationHomed"/>
		</row>
	</network>
	<network label="" comment="" row="11" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Status.SorterState.SortingProduct"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!" or="true"><input name="&lt;!SortingStationState = asSORTING_PRODUCT"/></function>
			<contact type="open" name="SorterControl.Status.SorterState.SortingProductDone"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.SortingProduct"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="AutomaticController.Status.ProductsTotal"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="AutomaticController.Status.ProductsTotal"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="SorterControl.Status.SorterState.Error"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="5"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="SorterControl.Status.SorterState.SortingProduct"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="HomingControl.Status.StationHomed"/>
		</row>
	</network>
	<network label="" comment="" row="10" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="ConveyorController.Cmd.Stop"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!" or="true"><input name="&lt;!SortingStationState = asERROR"/></function>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.Start"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="AutomaticController.Cmd.EnableTimer"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="AutomaticController.Status.Errors.Error2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="HomingControl.Status.StationHomed"/>
			<contact type="open" name="HomingControl.Cmd.HomeStation"/>
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="99"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="AutomaticController.Status.Errors.Error1"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="reset" name="AutomaticController.Status.Errors.Error2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="open" name="ConveyorController.Cmd.Reset"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Cmd.Reset"/>
		</row>
	</network>
</networks>
END_PROGRAM









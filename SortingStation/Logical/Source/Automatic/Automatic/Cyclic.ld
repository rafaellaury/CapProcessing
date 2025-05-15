PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
			<contact type="open" name="ProductArriving"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SortingStationState = asINACTIVE"/></function>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
			<analog type="output" name="SortingStationState"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="ProcessDone"/>
			<line/>
			<line/>
			<coil type="set" name="SorterControl.Cmd.Reset"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="ConveyorController.Cmd.Stop"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.Start"/>
		</row>
	</network>
	<network label="" comment="INIT STATE" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
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
			<line/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="2"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
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
			<coil type="reset" name="SorterControl.Status.SorterState.Init"/>
		</row>
	</network>
	<network label="" comment="WAITING STATE" row="5" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
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
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
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
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
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
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<analog type="input" name="4"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
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
			<coil type="reset" name="SorterControl.Status.SorterState.Classifying"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="1"/></function>
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
			<empty/>
			<empty or="true"/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40" ENO="true"/></function>
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
	</network>
</networks>
END_PROGRAM



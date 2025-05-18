PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="SorterControl.Status.ProductAvailable"/>
			<contact type="closed" name="ManualControl.Status.ProductClassified"/>
			<coil type="open" name="ManualControl.Cmd.ClassifyProduct"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Status.ProductClassified"/>
			<contact type="negative transition" name="SorterControl.Status.ProductAvailable"/>
			<line/>
			<line/>
			<coil type="set" name="ManualControl.Status.ProductInActiveArea"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="SorterControl.Status.LaneFull"/>
			<line/>
			<line/>
			<coil type="reset" name="ManualControl.Status.ProductClassified"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="ManualControl.Status.ProductInActiveArea"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ManualControl.Status.DestinationLane"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.ExtendSwitch1"/>
			<contact type="open" name="SorterControl.Status.Switch2Retracted"/>
			<coil type="open" name="gSorterHardwareIO.DigitalOutputs.doExtendSwitch1"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="ManualControl.Cmd.ExtendSwitch2"/>
			<contact type="open" name="SorterControl.Status.Switch1Retracted"/>
			<coil type="open" name="gSorterHardwareIO.DigitalOutputs.doExtendSwitch2"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.RetractStopper"/>
			<contact type="closed" name="SorterControl.Status.ProductAvailable"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<contact type="closed" name="SorterControl.Status.LaneFull"/>
			<coil type="open" name="gSorterHardwareIO.DigitalOutputs.doRetractStopper"/>
		</row>
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.RetractStopper"/>
			<contact type="open" name="SorterControl.Status.Switch1Extended"/>
			<contact type="open" name="SorterControl.Status.Switch2Retracted"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<contact type="closed" name="ManualControl.Status.ProductInActiveArea" or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!ManualControl.Status.DestinationLane = 1"/></function>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.RetractStopper"/>
			<contact type="open" name="SorterControl.Status.Switch1Retracted"/>
			<contact type="closed" name="SorterControl.Status.Switch2Extended"/>
			<line/>
			<line/>
			<line or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!ManualControl.Status.DestinationLane = 2"/></function>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.RetractStopper"/>
			<contact type="open" name="SorterControl.Status.Switch1Retracted"/>
			<contact type="open" name="SorterControl.Status.Switch2Retracted" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!ManualControl.Status.DestinationLane = 3"/></function>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.JogConveyorForward"/>
			<line/>
			<coil type="open" name="ConveyorController.Cmd.JogForward"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.JogConveyorBackward"/>
			<line/>
			<coil type="open" name="ConveyorController.Cmd.JogBackward"/>
		</row>
	</network>
</networks>
END_PROGRAM






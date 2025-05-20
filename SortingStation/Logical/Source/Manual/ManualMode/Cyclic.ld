PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="If manual mode is selected and a product is at the sensor, classify it" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="SorterControl.Status.ProductAvailable"/>
			<contact type="closed" name="ManualControl.Status.ProductClassified"/>
			<coil type="open" name="ManualControl.Cmd.ClassifyProduct"/>
		</row>
	</network>
	<network label="" comment="Code block to set various bits once the product is classified" row="5" column="0" commented="0">
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
	<network label="" comment="Only extend the switches if the other switch is not extended" row="2" column="0" commented="0">
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
	<network label="" comment="Logic to prevent the stopper from being opened in illegal scenarios:
First rung: If no product is there and the lanes are not full, then retract the stopper when the command is received
Second rung: If there is a product and its destination lane is 1, only retract the stopper (if command received) when the correct switch is extended - switch 1 in this case
Third rung: If there is a product and its destination lane is 1, only retract the stopper (if command received) when the correct switch is extended - switch 2 in this case
Fourth rung: Second rung: If there is a product and its destination lane is 1, only retract the stopper (if command received) when no switches are extended
Trigger an error in other cases" row="10" column="0" commented="0">
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
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line or="true"/>
			<empty or="true"/>
			<coil type="reset" name="ManualControl.Status.Error"/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!ManualControl.Status.DestinationLane = 1"/></function>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.RetractStopper"/>
			<contact type="open" name="SorterControl.Status.Switch1Retracted"/>
			<contact type="open" name="SorterControl.Status.Switch2Extended"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!ManualControl.Status.DestinationLane = 2"/></function>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.RetractStopper"/>
			<contact type="open" name="SorterControl.Status.Switch1Retracted"/>
			<contact type="open" name="SorterControl.Status.Switch2Retracted" or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!ManualControl.Status.DestinationLane = 3"/></function>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.Switch2Retracted"/>
			<line/>
			<coil type="set" name="ManualControl.Status.Error"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.Switch1Retracted"/>
			<line or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.Switch2Extended"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.Switch1Retracted"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.Switch2Retracted"/>
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
			<line or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="SorterControl.Status.Switch1Extended"/>
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
			<line/>
			<line or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Jog conveyor forward when command is received" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.JogConveyorForward"/>
			<line/>
			<coil type="open" name="ConveyorController.Cmd.JogForward"/>
		</row>
	</network>
	<network label="" comment="Jog conveyor backward when command is received" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="ManualControl.Cmd.JogConveyorBackward"/>
			<line/>
			<coil type="open" name="ConveyorController.Cmd.JogBackward"/>
		</row>
	</network>
</networks>
END_PROGRAM








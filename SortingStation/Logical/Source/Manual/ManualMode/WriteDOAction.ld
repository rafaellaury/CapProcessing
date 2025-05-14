ACTION WriteDOAction: 
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="Command to extend the switch 1" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Cmd.ExtendSwitch1"/>
			<line/>
			<line/>
			<coil type="open" name="gSorterHardwareIO.DigitalOutputs.doExtendSwitch1"/>
		</row>
	</network>
	<network label="" comment="Command to extend the switch 2" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Cmd.ExtendSwitch2"/>
			<line/>
			<line/>
			<coil type="open" name="gSorterHardwareIO.DigitalOutputs.doExtendSwitch2"/>
		</row>
	</network>
	<network label="" comment="Command to retract the stopper" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SorterControl.Cmd.RetractStopper"/>
			<line/>
			<line/>
			<coil type="open" name="gSorterHardwareIO.DigitalOutputs.doRetractStopper"/>
		</row>
	</network>
</networks>
END_ACTION


PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.HomingMode"/>
			<contact type="open" name="gStart"/>
			<line/>
			<coil type="open" name="HomingControl.Cmd.HomeStation"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.HomingMode"/>
			<contact type="open" name="HomingControl.Cmd.HomeStation"/>
			<contact type="closed" name="ConveyorController.Status.IsHomed"/>
			<coil type="open" name="ConveyorController.Cmd.Home"/>
		</row>
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<line or="true"/>
			<contact type="closed" name="SorterControl.Status.IsHomed"/>
			<coil type="open" name="SorterControl.Cmd.Home"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Status.IsHomed"/>
			<contact type="open" name="SorterControl.Status.IsHomed"/>
			<line/>
			<coil type="open" name="HomingControl.Status.StationHomed"/>
		</row>
	</network>
</networks>
END_PROGRAM






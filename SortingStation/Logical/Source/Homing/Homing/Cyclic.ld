PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="If homing mode is selected, run the HomeStation command" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.HomingMode"/>
			<line/>
			<line/>
			<coil type="open" name="HomingControl.Cmd.HomeStation"/>
		</row>
	</network>
	<network label="" comment="If in Homing or in Manual Mode and Home Station command received, run the commands for both Conveyor and Sorter modules." row="2" column="0" commented="0">
		<row>
			<contact type="open" name="gOperatingMode.HomingMode"/>
			<contact type="open" name="HomingControl.Cmd.HomeStation"/>
			<contact type="closed" name="ConveyorController.Status.IsHomed"/>
			<coil type="open" name="ConveyorController.Cmd.Home"/>
		</row>
		<row>
			<contact type="open" name="gOperatingMode.ManualMode"/>
			<contact type="open" name="HomingControl.Cmd.HomeStation" or="true"/>
			<contact type="closed" name="SorterControl.Status.IsHomed"/>
			<coil type="open" name="SorterControl.Cmd.Home"/>
		</row>
	</network>
	<network label="" comment="If both modules are homed, the StationHomed bit is true" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Status.IsHomed"/>
			<contact type="open" name="SorterControl.Status.IsHomed"/>
			<line/>
			<coil type="set" name="HomingControl.Status.StationHomed"/>
		</row>
	</network>
</networks>
END_PROGRAM









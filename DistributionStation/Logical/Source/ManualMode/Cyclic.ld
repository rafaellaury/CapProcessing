PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="1">
		<row>
			<contact type="open" name="ManualControl.EjectCylPush"/>
			<contact type="closed" name="MachineControl.Mode.AutoMode"/>
			<line/>
			<coil type="open" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="1">
		<row>
			<contact type="open" name="ManualControl.VacuumOn"/>
			<contact type="closed" name="MachineControl.Mode.AutoMode"/>
			<line/>
			<coil type="open" name="DistrStn.DOut.VacuumOn"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="1">
		<row>
			<contact type="open" name="ManualControl.EjectionImpulse"/>
			<contact type="closed" name="MachineControl.Mode.AutoMode"/>
			<line/>
			<coil type="open" name="DistrStn.DOut.EjectionImpulseOn"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="1">
		<row>
			<contact type="open" name="ManualControl.SwivelToMag"/>
			<contact type="closed" name="MachineControl.Mode.AutoMode"/>
			<line/>
			<coil type="open" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="1">
		<row>
			<contact type="open" name="ManualControl.SwivelToConv"/>
			<contact type="closed" name="MachineControl.Mode.AutoMode"/>
			<line/>
			<coil type="open" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
	</network>
</networks>
END_PROGRAM






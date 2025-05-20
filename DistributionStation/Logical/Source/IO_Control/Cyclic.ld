PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="Ejection Cylinder Control" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
			<line/>
			<line/>
			<coil type="open" name="IO.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<contact type="open" name="ManualControl.EjectCylPush"/>
			<contact type="open" name="MachineControl.Mode.ManualMode" or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Vaccum Control" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DOut.VacuumOn"/>
			<line/>
			<line/>
			<coil type="open" name="IO.DOut.VacuumOn"/>
		</row>
		<row>
			<contact type="open" name="ManualControl.VacuumOn"/>
			<contact type="open" name="MachineControl.Mode.ManualMode" or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Ejection Impulse Control" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DOut.EjectionImpulseOn"/>
			<line/>
			<line/>
			<coil type="open" name="IO.DOut.EjectionImpulseOn"/>
		</row>
		<row>
			<contact type="open" name="ManualControl.EjectionImpulse"/>
			<contact type="open" name="MachineControl.Mode.ManualMode" or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Svivle Drive to Magazine Control" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DOut.SwivelDriveToMagazine"/>
			<line/>
			<line/>
			<coil type="open" name="IO.DOut.SwivelDriveToMagazine"/>
		</row>
		<row>
			<contact type="open" name="MachineControl.MoveSvivle"/>
			<line or="true"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ManualControl.SwivelToMag"/>
			<contact type="open" name="MachineControl.Mode.ManualMode" or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Svivle Drive to Conveyor Control" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DOut.SwivelDriveToConveyor"/>
			<line/>
			<line/>
			<coil type="open" name="IO.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<contact type="open" name="ManualControl.SwivelToConv"/>
			<contact type="open" name="MachineControl.Mode.ManualMode" or="true"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.EjectingCylinderExtended"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.EjectingCylinderExtended"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.EjectingCylinderRetracted"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.EjectingCylinderRetracted"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.ProductGripped"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.ProductGripped"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.SwivelDriveInMagazinePosition"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.SwivelDriveInMagazinePosition"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.SwivelDriveInConveyorPosition"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.MagazineEmpty"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.MagazineEmpty"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.ProductAtStartingPosition"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.ProductAtStartingPosition"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="IO.DIn.ProductAtUnloadingPosition"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DIn.ProductAtUnloadingPosition"/>
		</row>
	</network>
</networks>
END_PROGRAM
















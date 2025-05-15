PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="6" column="0" commented="0">
		<row>
			<contact type="open" name="MachineControl.Command.Start"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.VacuumOn"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.EjectionImpulseOn"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="MachineState.0"/>
		</row>
	</network>
	<network label="" comment="Check If Svivel In Home Position, If not Home it." row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState.0"/>
			<contact type="open" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
			<line/>
			<coil type="set" name="MachineState.1"/>
		</row>
		<row>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="closed" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
			<line/>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
	</network>
	<network label="" comment="Extend The Cylinder" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState.1"/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="MachineState.2"/>
		</row>
	</network>
	<network label="" comment="Turn The Vacuum ON Once the cylinder is extende" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState.2"/>
			<contact type="open" name="DistrStn.DIn.EjectingCylinderExtended"/>
			<line/>
			<coil type="set" name="DistrStn.DOut.VacuumOn"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="MachineState.2"/>
		</row>
	</network>
	<network label="" comment="Svivle to Magazine and resetting Prodyct Cylinder" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState.2"/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="MachineState.3"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState.3"/>
			<contact type="open" name="DistrStn.DIn.ProductGripped"/>
			<contact type="open" name="DistrStn.DIn.EjectingCylinderRetracted"/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="MachineState.4"/>
		</row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="MachineState.4"/>
			<contact type="open" name="DistrStn.DIn.ProductGripped"/>
			<line/>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="MachineState.5"/>
		</row>
	</network>
	<network label="" comment="ProductS Present at Conveyor then release it and svivle in conveyor position" row="1" column="0" commented="1">
		<row>
			<contact type="open" name="MachineState.5"/>
			<contact type="open"/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="1">
		<row>
			<contact type="open" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
			<contact type="open" name="test"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DOut.EjectionImpulseOn"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.VacuumOn"/>
		</row>
	</network>
</networks>
END_PROGRAM





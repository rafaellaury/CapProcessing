PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MachineControl.Command.Start"/>
			<line/>
			<line/>
			<coil type="set" name="Machine.State1"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State1"/>
			<line/>
			<line/>
			<coil type="set" name="Machine.State2"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="SvivleToConv"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="Machine.State1"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State2"/>
			<contact type="closed" name="Machine.State1"/>
			<line/>
			<coil type="set" name="ProductMag"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="DistrStn.DIn.EjectingCylinderRetracted"/>
			<coil type="reset" name="Machine.State2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="Machine.State3"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State3"/>
			<contact type="closed" name="Machine.State2"/>
			<line/>
			<coil type="reset" name="ProductMag"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="SvivleToMagazine"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="VaccuumON"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="DistrStn.DIn.ProductGripped"/>
			<coil type="reset" name="Machine.State3"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="Machine.State4"/>
		</row>
	</network>
	<network label="" comment="" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State4"/>
			<contact type="closed" name="Machine.State3"/>
			<contact type="closed" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
			<contact type="closed" name="SvivleToMagazine"/>
			<coil type="set" name="SvivleToConv"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SvivleToMagazine"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="DistrStn.DIn.ProductAtStartingPosition"/>
			<line/>
			<coil type="reset" name="VaccuumON"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Machine.State4"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="Machine.State5"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State5"/>
			<contact type="closed" name="Machine.State4"/>
			<line/>
			<coil type="open" name="Ejection"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="SvivleToConv"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="Machine.State6"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
			<coil type="reset" name="Machine.State5"/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State6"/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="SvivleToMagazine"/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="header" name="TON_5" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="SvivleToMagazine"/>
		</row>
		<row>
			<analog type="input" name="T#900ms"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="reset" name="Machine.State6"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="VaccuumON"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DOut.VacuumOn"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SvivleToMagazine"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="SvivleToConv"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="ProductMag"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="Ejection"/>
			<line/>
			<line/>
			<coil type="open" name="DistrStn.DOut.EjectionImpulseOn"/>
		</row>
	</network>
</networks>
END_PROGRAM









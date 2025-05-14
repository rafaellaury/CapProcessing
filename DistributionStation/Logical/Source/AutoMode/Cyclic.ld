PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="MagazineON and Vaccum ON -Ensure Swivle is in the CovyPosition" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="STart"/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.VacuumOn"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DIn.EjectingCylinderRetracted"/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DIn.ProductGripped"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="DistrStn.DIn.ProductGripped"/>
			<contact type="closed" name="DistrStn.DOut.SwivelDriveToMagazine"/>
			<line/>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
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



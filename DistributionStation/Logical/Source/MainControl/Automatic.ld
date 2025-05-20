PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="Check if the machine is ready to run - Hommed , No Alarms, Sorting ready" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="SortingReady"/>
			<line/>
			<line/>
			<coil type="open" name="MachineControl.Status.ReadyToRun"/>
		</row>
		<row>
			<contact type="open" name="MachineControl.Override.SortingReadySignal" or="true"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="Start the Mahcine" row="8" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MachineControl.Command.Start"/>
			<line/>
			<contact type="open" name="MachineControl.Status.ReadyToRun"/>
			<contact type="closed" name="MachineControl.Status.RecoveryRequired"/>
			<coil type="set" name="Machine.State1"/>
		</row>
		<row>
			<contact type="positive transition" name="Bittest"/>
			<line or="true"/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="MachineControl.Status.Running"/>
		</row>
		<row>
			<contact type="open" name="MachineControl.Override.SortingSendProduct"/>
			<contact type="positive transition" name="IO.DIn.ProductAtUnloadingPosition" or="true"/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="MachineControl.Status.Stopped"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.VacuumOn"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.EjectionImpulseOn"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
	</network>
	<network label="" comment="Stop the machine" row="2" column="0" commented="0">
		<row>
			<contact type="positive transition" name="MachineControl.Command.Stop"/>
			<line/>
			<line/>
			<coil type="reset" name="MachineControl.Status.Running"/>
		</row>
		<row>
			<contact type="negative transition" name="MachineControl.Status.ReadyToRun" or="true"/>
			<line/>
			<line/>
			<coil type="set" name="MachineControl.Status.Stopped"/>
		</row>
	</network>
	<network label="" comment="Ensuring the svivle is at  conveyor " row="8" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<empty/>
			<functionblock position="header" name="ONS.RisingEdge2" type="R_TRIG"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="Machine.State1"/>
			<contact type="closed" name="MachineControl.Status.RecoveryRequired"/>
			<contact type="open" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
			<functionblock position="topbottom" type="R_TRIG"><input name="CLK"/><output name="Q"/></functionblock>
			<line/>
			<coil type="set" name="Machine.State2"/>
		</row>
		<row>
			<contact type="open" name="RecoveryState.State1"/>
			<contact type="open" name="MachineControl.Status.Running" or="true"/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Machine.State1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="MachineControl.Status.RecoveryRequired"/>
			<coil type="reset" name="RecoveryState.State1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="MachineControl.Status.RecoveryRequired"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<empty/>
			<functionblock position="header" name="ONS.RisingEdge1" type="R_TRIG"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="closed" name="Machine.State2"/>
			<contact type="closed" name="DistrStn.DIn.SwivelDriveInConveyorPosition"/>
			<functionblock position="topbottom" type="R_TRIG"><input name="CLK"/><output name="Q"/></functionblock>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
	</network>
	<network label="" comment="Dispensing product and sending svivle to the magazine" row="9" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State2"/>
			<contact type="closed" name="MachineControl.Status.RecoveryRequired"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<contact type="open" name="MachineControl.Status.Running"/>
			<contact type="open" name="RecoveryState.State2" or="true"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="DistrStn.DIn.EjectingCylinderRetracted"/>
			<line/>
			<line/>
			<line/>
			<line/>
			<coil type="set" name="TimeeLatch"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<empty/>
			<functionblock position="header" name="Timer" type="TON"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="TimeeLatch"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<line/>
			<coil type="reset" name="Machine.State2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="OnTime"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<contact type="open" name="MachineControl.Status.RecoveryRequired"/>
			<coil type="reset" name="RecoveryState.State2"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="MachineControl.Status.RecoveryRequired"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="TimeeLatch"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="Machine.State3"/>
		</row>
	</network>
	<network label="" comment="Turning the vacuum on and sending the svivle to the conveyor after a delay" row="8" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="R_TRIG_0" type="R_TRIG"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="Machine.State3"/>
			<functionblock position="topbottom" type="R_TRIG"><input name="CLK"/><output name="Q"/></functionblock>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="set" name="DistrStn.DOut.VacuumOn"/>
		</row>
		<row>
			<empty or="true"/>
			<empty/>
			<functionblock position="header" name="Timer2" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<contact type="open" name="DistrStn.DIn.ProductGripped"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="set" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="DleayTime"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="reset" name="Machine.State3"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<coil type="set" name="Machine.State4"/>
		</row>
	</network>
	<network label="" comment="Turn the ejection pulse on for the product to be dropped" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State4"/>
			<contact type="closed" name="DistrStn.DIn.ProductAtStartingPosition"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.VacuumOn"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="DistrStn.DOut.EjectionImpulseOn"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="Machine.State4"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="set" name="Machine.State5"/>
		</row>
	</network>
	<network label="" comment="Moving Svivle to safe position " row="4" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State5"/>
			<line/>
			<line/>
			<line/>
			<coil type="open" name="MachineControl.MoveSvivle"/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="header" name="Timer3" type="TON"/>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty or="true"/>
			<functionblock position="top" type="TON"><input name="IN"/><output name="Q"/></functionblock>
			<line/>
			<coil type="reset" name="Machine.State5"/>
		</row>
		<row>
			<analog type="input" name="MoveTime"/>
			<functionblock position="bottom" type="TON"><input name="PT"/><output name="ET"/></functionblock>
			<empty or="true"/>
			<coil type="reset" name="DistrStn.DOut.EjectionImpulseOn"/>
		</row>
	</network>
	<network label="" comment="Turn the recovery for state 1 if machine stopped" row="2" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State1"/>
			<contact type="positive transition" name="MachineControl.Status.Stopped"/>
			<line/>
			<coil type="set" name="RecoveryState.State1"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToConveyor"/>
		</row>
	</network>
	<network label="" comment="Turn the recovery for state 2 if machine stopped" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="Machine.State2"/>
			<contact type="positive transition" name="MachineControl.Status.Stopped"/>
			<line/>
			<coil type="set" name="RecoveryState.State2"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.EjectingCylinderPushOutProduct"/>
		</row>
		<row>
			<empty/>
			<empty or="true"/>
			<line/>
			<coil type="reset" name="DistrStn.DOut.SwivelDriveToMagazine"/>
		</row>
	</network>
	<network label="" comment="Turn the recovery required status when it is required" row="3" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="R_TRIG_11" type="R_TRIG"/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="RecoveryState.State1"/>
			<contact type="open" name="MachineControl.Status.Stopped"/>
			<functionblock position="topbottom" type="R_TRIG"><input name="CLK"/><output name="Q"/></functionblock>
			<coil type="set" name="MachineControl.Status.RecoveryRequired"/>
		</row>
		<row>
			<contact type="open" name="RecoveryState.State2" or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="4" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="Counter" type="CTU"/>
			<empty/>
		</row>
		<row>
			<contact type="positive transition" name="Machine.State1"/>
			<functionblock position="top" type="CTU"><input name="CU"/><output name="Q"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="positive transition" name="MachineControl.Command.Reset"/>
			<functionblock position="middle" type="CTU"><input name="RESET"/><output name="CV"/></functionblock>
			<analog type="output" name="CountedCaps"/>
		</row>
		<row>
			<analog type="input" name="500"/>
			<functionblock position="bottom" type="CTU"><input name="PV"/></functionblock>
			<empty/>
		</row>
	</network>
</networks>
END_PROGRAM
























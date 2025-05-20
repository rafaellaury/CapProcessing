PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="Mp Axis Function Block to run the conveyor" row="19" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="ConvAxis_Base" type="MpAxisBasic"/>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="DistributionConvy"/>
			<functionblock position="top" type="MpAxisBasic"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="positive transition" name="MachineControl.Command.Reset"/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="ConvAxis_Par"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Parameters" vardynamic="true"/><output name="UpdateDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Update"/><output name="Position"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ConvAxis_Base.Info.ReadyToPowerOn"/>
			<contact type="open" name="MachineControl.Status.ReadyToRun"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Power"/><output name="Velocity"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Home"/><output name="CommandBusy"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="MachineControl.Status.Running"/>
			<contact type="open" name="ConvAxis_Base.PowerOn"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveVelocity"/><output name="CommandAborted"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ManualControl.ConvFwd" or="true"/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAbsolute"/><output name="PowerOn"/></functionblock>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ManualControl.ConvBack" or="true"/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAdditive"/><output name="IsHomed"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Stop"/><output name="InVelocity"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="JogPositive"/><output name="InPosition"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="JogNegative"/><output name="MoveActive"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="LimitLoad"/><output name="MoveDone"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="ReleaseBrake"/><output name="Stopped"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Simulate"/><output name="LimitLoadReady"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="AutoTune"/><output name="BrakeReleased"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="bottom" type="MpAxisBasic"><output name="Info"/></functionblock>
			<empty/>
		</row>
	</network>
	<network label="" comment="Transferring velocity parameter" row="1" column="0" commented="0">
		<row>
			<analog type="input" name="MachineControl.Par.Velocity"/>
			<function position="topbottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConvAxis_Par.Velocity"/>
		</row>
	</network>
	<network label="" comment="Transferring Acceleration Parameter" row="1" column="0" commented="0">
		<row>
			<analog type="input" name="MachineControl.Par.Acceleration"/>
			<function position="topbottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConvAxis_Par.Acceleration"/>
		</row>
	</network>
	<network label="" comment="Transferring Decceleration parameter" row="1" column="0" commented="0">
		<row>
			<analog type="input" name="MachineControl.Par.Decceleration"/>
			<function position="topbottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConvAxis_Par.Deceleration"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="R_TRIG_0" type="R_TRIG"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ManualControl.ConvFwd"/>
			<functionblock position="topbottom" type="R_TRIG"><input name="CLK"/><output name="Q"/></functionblock>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<contact type="open" name="MachineControl.Mode.AutoMode" or="true"/>
			<empty/>
			<analog type="input" name="0"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConvAxis_Par.Direction"/>
		</row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<empty/>
			<functionblock position="header" name="R_TRIG_1" type="R_TRIG"/>
			<empty/>
			<empty/>
			<empty/>
		</row>
		<row>
			<contact type="open" name="ManualControl.ConvBack"/>
			<functionblock position="topbottom" type="R_TRIG"><input name="CLK"/><output name="Q"/></functionblock>
			<function position="top" type="MOVE"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<analog type="input" name="1"/>
			<function position="bottom" type="MOVE"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ConvAxis_Par.Direction"/>
		</row>
	</network>
</networks>
END_PROGRAM

















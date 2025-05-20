PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="Powering on the axis" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.Start"/>
			<contact type="closed" name="MpAxisBasic_0.Error"/>
			<contact type="closed" name="MpAxisBasic_0.PowerOn"/>
			<line/>
			<coil type="set" name="MpAxisBasic_0.Power"/>
		</row>
		<row>
			<contact type="open" name="ConveyorController.Cmd.JogBackward" or="true"/>
			<empty or="true"/>
			<contact type="open" name="MpAxisBasic_0.PowerOn"/>
			<contact type="closed" name="MpAxisBasic_0.IsHomed"/>
			<coil type="open" name="MpAxisBasic_0.Home"/>
		</row>
		<row>
			<contact type="open" name="ConveyorController.Cmd.JogForward" or="true"/>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
		</row>
	</network>
	<network label="" comment="If the Jog forward command received, run the command on the function block if it is powered on and homed" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.JogForward"/>
			<contact type="closed" name="MpAxisBasic_0.Error"/>
			<contact type="open" name="MpAxisBasic_0.PowerOn"/>
			<contact type="open" name="MpAxisBasic_0.IsHomed"/>
			<coil type="open" name="MpAxisBasic_0.JogPositive"/>
		</row>
	</network>
	<network label="" comment="If the Jog backward command received, run the command on the function block if it is powered on and homed" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.JogBackward"/>
			<contact type="closed" name="MpAxisBasic_0.Error"/>
			<contact type="open" name="MpAxisBasic_0.PowerOn"/>
			<contact type="open" name="MpAxisBasic_0.IsHomed"/>
			<coil type="open" name="MpAxisBasic_0.JogNegative"/>
		</row>
	</network>
	<network label="" comment="If the Start command is received, activate the MoveVelocity command if it is powered on and homed" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.Start"/>
			<contact type="closed" name="MpAxisBasic_0.Error"/>
			<contact type="open" name="MpAxisBasic_0.PowerOn"/>
			<contact type="open" name="MpAxisBasic_0.IsHomed"/>
			<coil type="open" name="MpAxisBasic_0.MoveVelocity"/>
		</row>
	</network>
	<network label="" comment="If the Stop command is received, stop the axis slowly, and then power it off." row="6" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.Stop"/>
			<contact type="closed" name="MpAxisBasic_0.Error"/>
			<contact type="open" name="MpAxisBasic_0.PowerOn"/>
			<contact type="open" name="MpAxisBasic_0.IsHomed"/>
			<contact type="open" name="MpAxisBasic_0.MoveActive"/>
			<contact type="closed" name="MpAxisBasic_0.Stopped"/>
			<coil type="open" name="MpAxisBasic_0.Stop"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="MpAxisBasic_0.MoveVelocity"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="MpAxisBasic_0.JogPositive"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="MpAxisBasic_0.JogNegative"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<empty or="true"/>
			<coil type="reset" name="ConveyorController.Cmd.Start"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<empty/>
			<empty or="true"/>
			<contact type="open" name="MpAxisBasic_0.Stopped"/>
			<coil type="reset" name="MpAxisBasic_0.Power"/>
		</row>
	</network>
	<network label="" comment="If the home command is received, home the axis" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.Home"/>
			<contact type="closed" name="MpAxisBasic_0.IsHomed"/>
			<line/>
			<coil type="open" name="MpAxisBasic_0.Home"/>
		</row>
	</network>
	<network label="" comment="If the reset command is received, reset all the bits" row="5" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.Reset"/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.Stop"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="open" name="MpAxisBasic_0.ErrorReset"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.Start"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.JogForward"/>
		</row>
		<row>
			<empty or="true"/>
			<line/>
			<line/>
			<coil type="reset" name="ConveyorController.Cmd.JogBackward"/>
		</row>
	</network>
	<network label="" comment="Instance of MpAxisBasic function block" row="20" column="0" commented="0">
		<row>
			<empty/>
			<empty/>
			<functionblock position="header" name="MpAxisBasic_0" type="MpAxisBasic"/>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="top" type="MpAxisBasic"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="gAxisSort"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Enable"/><output name="Error"/></functionblock>
			<analog type="output" name="ConveyorController.Status.Error"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="ErrorReset"/><output name="StatusID"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<contact type="address" name="MpAxisParameters_0"/>
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
			<empty/>
			<empty/>
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
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveVelocity"/><output name="CommandAborted"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAbsolute"/><output name="PowerOn"/></functionblock>
			<analog type="output" name="ConveyorController.Status.IsPowered"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MoveAdditive"/><output name="IsHomed"/></functionblock>
			<analog type="output" name="ConveyorController.Status.IsHomed"/>
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
			<analog type="output" name="ConveyorController.Status.MoveActive"/>
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
</networks>
END_PROGRAM













PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="3" column="0" commented="0">
		<row>
			<contact type="open" name="ConveyorController.Cmd.Start"/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<analog type="input" name="MotionControlState"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="MotionControlState"/>
		</row>
		<row>
			<analog type="input" name="1"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="" row="20" column="0" commented="0">
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
			<empty/>
			<functionblock position="middle" type="MpAxisBasic"><input name="MpLink" vardynamic="true"/><output name="Active"/></functionblock>
			<empty/>
		</row>
		<row>
			<line/>
			<line/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Enable"/><output name="Error"/></functionblock>
			<empty/>
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
			<analog type="input" name="ConveyorController.Cmd.Start"/>
			<functionblock position="middle" type="MpAxisBasic"><input name="Power"/><output name="Velocity"/></functionblock>
			<empty/>
		</row>
		<row>
			<empty/>
			<analog type="input" name="ConveyorController.Cmd.Home"/>
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
</networks>
END_PROGRAM



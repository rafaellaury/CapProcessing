ACTION ReadDIAction: 
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="Action file to read all digital inputs from the hardware" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diProdAvail"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.ProductAvailable"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diMetallic"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.ProductMetallic"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diNotBlack"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.ProductNotBlack"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diLaneFull"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.LaneFull"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diSwitch1Retracted"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.Switch1Retracted"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diSwitch1Extended"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.Switch1Extended"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diSwitch2Retracted"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.Switch2Retracted"/>
		</row>
	</network>
	<network label="" comment="" row="1" column="0" commented="0">
		<row>
			<contact type="open" name="gSorterHardwareIO.DigitalInputs.diSwitch2Extended"/>
			<line/>
			<line/>
			<coil type="open" name="SorterControl.Status.Switch2Extended"/>
		</row>
	</network>
</networks>
END_ACTION


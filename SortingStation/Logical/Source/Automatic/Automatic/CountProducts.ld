ACTION CountProducts: 
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="Counting each individual product type
2 : Red
3 : Black
4 : Metal" row="3" column="0" commented="0">
		<row>
			<line/>
			<function position="top" type="Compare!"><input name="EN" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="middle" type="Compare!"><input name=""/><output name="1"/></function>
			<empty/>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = 1"/></function>
			<empty/>
			<empty/>
		</row>
	</network>
</networks>
END_ACTION


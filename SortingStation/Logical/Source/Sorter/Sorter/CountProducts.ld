ACTION CountProducts: 
<?xml version="1.0"?>
<?AutomationStudio FileVersion="4.9"?>
<!-- Automation Studio Generated XML Section -->
<networks xmlns:dt="urn:schemas-microsoft-com:datatypes" maxcolumn="0">
	<network label="" comment="Counting each individual product type
2 : Red
3 : Black
4 : Metal

Incrementing Red product counter" row="3" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = 2"/></function>
			<analog type="input" name="1"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ProductCounter.ProductCountRed"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="ProductCounter.ProductCountRed"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="Incrementing Black product counter" row="3" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = 3"/></function>
			<analog type="input" name="1"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ProductCounter.ProductCountBlack"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="ProductCounter.ProductCountBlack"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
	<network label="" comment="Incrementing Metal product counter" row="3" column="0" commented="0">
		<row>
			<empty/>
			<function position="top" type="Compare!"><input name=""/><output name="56"/></function>
			<line/>
			<function position="top" type="ADD"><input name="EN" extensible="true" ENO="true"/><output name="ENO" ENO="true"/></function>
			<empty/>
		</row>
		<row>
			<empty/>
			<function position="bottom" type="Compare!"><input name="&lt;!SorterControl.Status.ProductType = 4"/></function>
			<analog type="input" name="1"/>
			<function position="middle" type="ADD"><input name="" extensible="true"/><output name="40"/></function>
			<analog type="output" name="ProductCounter.ProductCountMetal"/>
		</row>
		<row>
			<empty/>
			<empty/>
			<empty/>
			<analog type="input" name="ProductCounter.ProductCountMetal"/>
			<function position="bottom" type="ADD"><input name="" extensible="true"/></function>
			<empty/>
		</row>
	</network>
</networks>
END_ACTION




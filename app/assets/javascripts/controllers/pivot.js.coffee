# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('#_Pivot').click ->
		changeTab($(this))
	window.spa.changeTab.Pivot = -> changeTab($("#_Pivot"))

matrixEach = (m, f) ->
	result = []
	for row, x in m
		row_result = []
		for cell, y in row
			row_result.push(f(cell, x, y))
		result.push(row_result)
	result

# Change content when header menu item is clicked
changeTab = (menuElement) ->
	# Change content
	$('#content').html("Loading...<br/>")
	#pivotData = JSON.parse(fakeJsonTable)
	$.get '/verifications/pivot.json', (pivotData) ->
		# Convert all cells to objects
		pivotData = matrixEach(pivotData, (x) -> {data: x, class: "", toString: -> this.data})
		# Augment header
		pivotData = matrixEach(pivotData, (x, r, c) -> 
			if r == 0
				x.class += " header"
			x
		)
		# Augment numbers
		pivotData = matrixEach(pivotData, (x, r, c) -> 
			if typeof x.data == "number"
				x.class += " number"
				if x.data >= 0 and r > 0
					x.class += " positive-number"
				else if r > 0
					x.class += " negative-number"
			x
		)
		#$('#content').html(Milk.render(pivotTemplate,pivotData))
		$('#content').html(tmpl("pivot_template",{data: pivotData}))

pivotTemplate = "<table class='metro'>
{{#.}}
	<tr>
	{{#.}}
		<td class='{{class}}'>
		{{data}}
		</td>
	{{/.}}
	</tr>
{{/.}}
</table>"

fakeJsonTable2 = '[["wewer"],["asdf","qwer","asdf"]]'
fakeJsonTable = '[
	["Category",1,2,3,4,5,6,7,"Average","Total"],
	["CSN","",-9122,"","",-9122,"","",-2606,-18244],
	["Cigaretter",-253,-636,-913,-661,-636,-742,"",-549,-3841],
	["Hushåll",-1156,-2478,-1766,-1239,-1323,-3326,"",-1613,-11288],
	["Hyra",-6140,-6140,-6140,-6140,-6140,-6655,"",-5336,-37355],
	["Kläder","",-1495,"","",-4748,-2300,"",-1220,-8543],
	["Kontant","","",-1400,"","","","",-200,-1400],
	["Lunch",-2341,-3461,-3725,-1584,-1797,-1836,"",-2106,-14744],
	["Lön",32610,30382,32579,35809,28112,38321,"",28259,197813],
	["Mat",-2278,-2239,-2223,-1634,-2961,-3026,"",-2052,-14362],
	["Nöje",-1990,-1872,-2374,-1164,-3271,-1110,"",-1683,-11781],
	["Resa","","","","",-7186,-1023,"",-1173,-8209],
	["Sparkonto",-7000,-5000,-6913,-10000,-5500,-10078,-10000,-1905,-13335],
	["Systembolaget",-688,-714,-1047,-995,-373,-1799,"",-802,-5616],
	["Transport",-790,-790,-790,-790,-790,-790,"",-677,-4740],
	["Övrigt",-792,-1784,-1280,-1583,-1205,-3399,"",-1208,-8459],
	["Total",-2873,-533,-2667,-3034,-5939,-18532,-10000,-757,-5299]
]'

fakePivotHtml = '	<table class="metro">
		<thead class="metro">
		<tr class="metro">
			<th class="metro">Category</th>

			<th class="metro number">1</th>
			<th class="metro number">2</th>
			<th class="metro number">3</th>
			<th class="metro number">4</th>
			<th class="metro number">5</th>
			<th class="metro number">6</th>
			<th class="metro number">7</th>
			<th class="metro">Average</th>
			<th class="metro">Total</th>
		</tr>
		</thead>
		<tbody>
			<tr class="metro">

				<td class="metro">CSN</td>
				<td class="metro"></td>
				<td class="metro number negative-number">9&nbsp;122</td>
				<td class="metro"></td>
				<td class="metro"></td>
				<td class="metro number negative-number">9&nbsp;122</td>

				<td class="metro"></td>
				<td class="metro"></td>
				<td class="metro number negative-number">2&nbsp;606</td>
				<td class="metro number negative-number">18&nbsp;244</td>
			</tr>
			<tr class="metro">
				<td class="metro">Cigaretter</td>

				<td class="metro number negative-number">253</td>
				<td class="metro number negative-number">636</td>
				<td class="metro number negative-number">913</td>
				<td class="metro number negative-number">661</td>
				<td class="metro number negative-number">636</td>
				<td class="metro number negative-number">742</td>

				<td class="metro"></td>
				<td class="metro number negative-number">549</td>
				<td class="metro number negative-number">3&nbsp;841</td>
			</tr>
			<tr class="metro">
				<td class="metro">Hushåll</td>
				<td class="metro number negative-number">1&nbsp;156</td>

				<td class="metro number negative-number">2&nbsp;478</td>
				<td class="metro number negative-number">1&nbsp;766</td>
				<td class="metro number negative-number">1&nbsp;239</td>
				<td class="metro number negative-number">1&nbsp;323</td>
				<td class="metro number negative-number">3&nbsp;326</td>

				<td class="metro"></td>
				<td class="metro number negative-number">1&nbsp;613</td>
				<td class="metro number negative-number">11&nbsp;288</td>
			</tr>
			<tr class="metro">
				<td class="metro">Hyra</td>

				<td class="metro number negative-number">6&nbsp;140</td>
				<td class="metro number negative-number">6&nbsp;140</td>
				<td class="metro number negative-number">6&nbsp;140</td>
				<td class="metro number negative-number">6&nbsp;140</td>
				<td class="metro number negative-number">6&nbsp;140</td>

				<td class="metro number negative-number">6&nbsp;655</td>
				<td class="metro"></td>
				<td class="metro number negative-number">5&nbsp;336</td>
				<td class="metro number negative-number">37&nbsp;355</td>
			</tr>

			<tr class="metro">
				<td class="metro">Kläder</td>
				<td class="metro"></td>
				<td class="metro number negative-number">1&nbsp;495</td>
				<td class="metro"></td>
				<td class="metro"></td>
				<td class="metro number negative-number">4&nbsp;748</td>

				<td class="metro number negative-number">2&nbsp;300</td>
				<td class="metro"></td>
				<td class="metro number negative-number">1&nbsp;220</td>
				<td class="metro number negative-number">8&nbsp;543</td>
			</tr>
			<tr class="metro">

				<td class="metro">Kontant</td>
				<td class="metro"></td>
				<td class="metro"></td>
				<td class="metro number negative-number">1&nbsp;400</td>
				<td class="metro"></td>
				<td class="metro"></td>
				<td class="metro"></td>

				<td class="metro"></td>
				<td class="metro number negative-number">200</td>
				<td class="metro number negative-number">1&nbsp;400</td>
			</tr>
			<tr class="metro">
				<td class="metro">Lunch</td>
				<td class="metro number negative-number">2&nbsp;341</td>

				<td class="metro number negative-number">3&nbsp;461</td>
				<td class="metro number negative-number">3&nbsp;725</td>
				<td class="metro number negative-number">1&nbsp;584</td>
				<td class="metro number negative-number">1&nbsp;797</td>
				<td class="metro number negative-number">1&nbsp;836</td>

				<td class="metro"></td>
				<td class="metro number negative-number">2&nbsp;106</td>
				<td class="metro number negative-number">14&nbsp;744</td>
			</tr>
			<tr class="metro">
				<td class="metro">Lön</td>

				<td class="metro number positive-number">32&nbsp;610</td>
				<td class="metro number positive-number">30&nbsp;382</td>
				<td class="metro number positive-number">32&nbsp;579</td>
				<td class="metro number positive-number">35&nbsp;809</td>
				<td class="metro number positive-number">28&nbsp;112</td>

				<td class="metro number positive-number">38&nbsp;321</td>
				<td class="metro"></td>
				<td class="metro number positive-number">28&nbsp;259</td>
				<td class="metro number positive-number">197&nbsp;813</td>
			</tr>
			<tr class="metro">

				<td class="metro">Mat</td>
				<td class="metro number negative-number">2&nbsp;278</td>
				<td class="metro number negative-number">2&nbsp;239</td>
				<td class="metro number negative-number">2&nbsp;223</td>
				<td class="metro number negative-number">1&nbsp;634</td>

				<td class="metro number negative-number">2&nbsp;961</td>
				<td class="metro number negative-number">3&nbsp;026</td>
				<td class="metro"></td>
				<td class="metro number negative-number">2&nbsp;052</td>
				<td class="metro number negative-number">14&nbsp;362</td>

			</tr>
			<tr class="metro">
				<td class="metro">Nöje</td>
				<td class="metro number negative-number">1&nbsp;990</td>
				<td class="metro number negative-number">1&nbsp;872</td>
				<td class="metro number negative-number">2&nbsp;374</td>

				<td class="metro number negative-number">1&nbsp;164</td>
				<td class="metro number negative-number">3&nbsp;271</td>
				<td class="metro number negative-number">1&nbsp;110</td>
				<td class="metro"></td>
				<td class="metro number negative-number">1&nbsp;683</td>

				<td class="metro number negative-number">11&nbsp;781</td>
			</tr>
			<tr class="metro">
				<td class="metro">Resa</td>
				<td class="metro"></td>
				<td class="metro"></td>
				<td class="metro"></td>

				<td class="metro"></td>
				<td class="metro number negative-number">7&nbsp;186</td>
				<td class="metro number negative-number">1&nbsp;023</td>
				<td class="metro"></td>
				<td class="metro number negative-number">1&nbsp;173</td>
				<td class="metro number negative-number">8&nbsp;209</td>

			</tr>
			<tr class="metro">
				<td class="metro">Sparkonto</td>
				<td class="metro number negative-number">7&nbsp;000</td>
				<td class="metro number positive-number">5&nbsp;000</td>
				<td class="metro number negative-number">6&nbsp;913</td>

				<td class="metro number negative-number">10&nbsp;000</td>
				<td class="metro number positive-number">5&nbsp;500</td>
				<td class="metro number positive-number">10&nbsp;078</td>
				<td class="metro number negative-number">10&nbsp;000</td>
				<td class="metro number negative-number">1&nbsp;905</td>

				<td class="metro number negative-number">13&nbsp;335</td>
			</tr>
			<tr class="metro">
				<td class="metro">Systembolaget</td>
				<td class="metro number negative-number">688</td>
				<td class="metro number negative-number">714</td>

				<td class="metro number negative-number">1&nbsp;047</td>
				<td class="metro number negative-number">995</td>
				<td class="metro number negative-number">373</td>
				<td class="metro number negative-number">1&nbsp;799</td>
				<td class="metro"></td>
				<td class="metro number negative-number">802</td>

				<td class="metro number negative-number">5&nbsp;616</td>
			</tr>
			<tr class="metro">
				<td class="metro">Transport</td>
				<td class="metro number negative-number">790</td>
				<td class="metro number negative-number">790</td>

				<td class="metro number negative-number">790</td>
				<td class="metro number negative-number">790</td>
				<td class="metro number negative-number">790</td>
				<td class="metro number negative-number">790</td>
				<td class="metro"></td>
				<td class="metro number negative-number">677</td>

				<td class="metro number negative-number">4&nbsp;740</td>
			</tr>
			<tr class="metro">
				<td class="metro">Övrigt</td>
				<td class="metro number positive-number">792</td>
				<td class="metro number negative-number">1&nbsp;784</td>

				<td class="metro number negative-number">1&nbsp;280</td>
				<td class="metro number negative-number">1&nbsp;583</td>
				<td class="metro number negative-number">1&nbsp;205</td>
				<td class="metro number negative-number">3&nbsp;399</td>
				<td class="metro"></td>

				<td class="metro number negative-number">1&nbsp;208</td>
				<td class="metro number negative-number">8&nbsp;459</td>
			</tr>
			<tr class="metro">
				<td class="metro">Total</td>
				<td class="metro number positive-number">2&nbsp;873</td>

				<td class="metro number negative-number">533</td>
				<td class="metro number negative-number">2&nbsp;667</td>
				<td class="metro number positive-number">3&nbsp;034</td>
				<td class="metro number negative-number">5&nbsp;939</td>
				<td class="metro number positive-number">18&nbsp;532</td>

				<td class="metro number negative-number">10&nbsp;000</td>
				<td class="metro number positive-number">757</td>
				<td class="metro number positive-number">5&nbsp;299</td>
			</tr>
		</tbody>
	</table>'
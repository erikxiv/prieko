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

showTooltip = (x, y, contents) ->
	$('<div id="tooltip">' + contents + '</div>').css( {
		position: 'absolute',
		display: 'none',
		top: y + 5,
		left: x + 5,
		border: '1px solid white',
		padding: '2px',
		'background-color': '#346669',
		opacity: 0.80
	}).appendTo("body").fadeIn(200)

previousPoint = null
pivotCache = null

# Change content when header menu item is clicked
changeTab = (menuElement) ->
	# Change content
	$('#content').html("Loading...<br/>")
	#pivotData = JSON.parse(fakeJsonTable)
	$.get '/verifications/pivot.json'+window.spa.query.toString(), (pivotData) ->
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
				x.data = x.data.toFixed(0)
				if x.data >= 0 and r > 0
					x.class += " positive-number"
				else if r > 0
					x.class += " negative-number"
			x
		)
		$('#content').html(tmpl("pivot_template",{data: pivotData}))
		# Decide whether to show table or graph
		if window.spa.query.get('PivotView') == 'Table'
			$('#pivot_table').show().css('position', 'relative')
		else
			$('#pivot_graph').show().css('position', 'relative')
		# Build graph
		pos_series = []
		neg_series = []
		for row, x in pivotData
			pos_serie = {data: []}
			neg_serie = {data: []}
			pos = false
			neg = false
			if x > 0 and x < pivotData.length-1
				for cell, y in row
					if y == 0
						pos_serie.label = cell.data
						neg_serie.label = cell.data
					else if y < row.length-2
						pos_serie.data.push([pivotData[0][y],if cell.data > 0 then cell.data else 0])
						neg_serie.data.push([pivotData[0][y], if cell.data < 0 then cell.data else 0])
						pos = pos || cell.data > 0
						neg = neg || cell.data < 0
				pos_series.push(pos_serie) if pos
				neg_series.push(neg_serie) if neg
		$.plot($('#pivot_graph_pos'), pos_series,
			{
				series: {stack: true, lines: { show: true, fill: true, steps: false },points: { show: true }},
				grid: {color: "rgb(255,255,255)", hoverable: true}
				legend: {position: "nw", margin: [580, 0], backgroundOpacity: 0}
				xaxis: {ticks: pivotData[0].length-3, tickDecimals: 0}
			})
		$.plot($('#pivot_graph_neg'), neg_series,
			{
				series: {stack: true, lines: { show: true, fill: true, steps: false },points: { show: true }},
				grid: {color: "rgb(255,255,255)", hoverable: true}
				legend: {position: "nw", margin: [580, 0], backgroundOpacity: 0}
				xaxis: {ticks: pivotData[0].length-3, tickDecimals: 0}
			})
		$("#pivot_graph_pos,#pivot_graph_neg").bind("plothover", (event, pos, item) ->
			$("#x").text(pos.x.toFixed(2))
			$("#y").text(pos.y.toFixed(2))
			if (item)
				if (previousPoint != item.dataIndex)
					previousPoint = item.dataIndex;
					$("#tooltip").remove();
					x = item.datapoint[0].toFixed(2)
					y = item.datapoint[1].toFixed(2)
					showTooltip(item.pageX, item.pageY,item.series.label + " " + get_pivot_data(item.series.label, item.dataIndex));
			else
				$("#tooltip").remove();
				previousPoint = null;            
		)
		pivotCache=pivotData

get_pivot_data = (cat, period) ->
	rr = null
	for row, x in pivotCache
		if row[0].data == cat
			rr = row 
	if rr and rr[period+1].data
		rr[period+1].data
	else
		0
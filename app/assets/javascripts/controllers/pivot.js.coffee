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
		$.plot($('#pivot_graph'), [[[1,2],[4,3],[6,7]]])

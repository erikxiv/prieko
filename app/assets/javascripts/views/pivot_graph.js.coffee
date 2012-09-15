//= require main

window.eco.views.pivot_graph = Backbone.View.extend({
#	id: "_pivot_graph_view"
	el: "#content"
	previousPoint: null
	that: null

	render: (event) ->
		that = this
		m = this.model.toJSON()
		this.$el.html(this.template(m))
		
		# Build graph
		data = this.model.get("data")
		row_headers = this.model.get("row_headers")
		column_headers = this.model.get("column_headers")
		pos_series = []
		neg_series = []
		for row, x in data
			pos_serie = {data: []}
			neg_serie = {data: []}
			pos = false
			neg = false
			for cell, y in row
				pos_serie.label = row_headers[x]
				neg_serie.label = row_headers[x]
				pos_serie.data.push([y,if cell > 0 then cell else 0])
				neg_serie.data.push([y, if cell < 0 then cell else 0])
				pos = pos || cell > 0
				neg = neg || cell < 0
			pos_series.push(pos_serie) if pos
			neg_series.push(neg_serie) if neg
		$.plot($('#pivot_graph_pos', this.$el), pos_series,
			{
				series: {stack: true, lines: { show: true, fill: true, steps: false },points: { show: true }},
				grid: {color: "rgb(255,255,255)", hoverable: true}
				legend: {position: "nw", margin: [580, 0], backgroundOpacity: 0}
				xaxis: {ticks: column_headers.length, tickDecimals: 0, tickFormatter: (val, axis) -> column_headers[parseInt(val)]}
			})
		$.plot($('#pivot_graph_neg', this.$el), neg_series,
			{
				series: {stack: true, lines: { show: true, fill: true, steps: false },points: { show: true }},
				grid: {color: "rgb(255,255,255)", hoverable: true}
				legend: {position: "nw", margin: [580, 0], backgroundOpacity: 0}
				xaxis: {ticks: column_headers.length, tickDecimals: 0, tickFormatter: (val, axis) -> column_headers[parseInt(val)]}
			})
		$('#pivot_graph_pos', this.$el).replaceWith("No income") if pos_series.length == 0
		$('#pivot_graph_neg', this.$el).replaceWith("No expenditure") if neg_series.length == 0
		$("#pivot_graph_pos,#pivot_graph_neg", this.$el).bind("plothover", (event, pos, item) ->
			$("#x").text(pos.x.toFixed(2))
			$("#y").text(pos.y.toFixed(2))
			if (item)
				if (previousPoint != item.dataIndex)
					previousPoint = item.dataIndex;
					$("#tooltip").remove();
					x = item.datapoint[0].toFixed(2)
					y = item.datapoint[1].toFixed(2)
					that.showTooltip(item.pageX, item.pageY,item.series.label + " " + data[row_headers.indexOf(item.series.label)][item.dataIndex]);
			else
				$("#tooltip").remove();
				previousPoint = null;            
		)
		
		this

	initialize: (options) ->
		this.model.on('change', this.render, this)
		this.model.on('reset', this.render, this)

	showTooltip: (x, y, contents) ->
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

	template: _.template("
	<h2>Income</h2>
	<div id='pivot_graph_pos' style='width:600px;height:300px;'></div>
	<h2>Expenditure</h2>
	<div id='pivot_graph_neg' style='width:600px;height:300px;'></div>
	")
})

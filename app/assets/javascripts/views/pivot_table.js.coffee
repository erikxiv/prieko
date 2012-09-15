//= require main

window.eco.views.pivot_table = Backbone.View.extend({
	#id: "_pivot_table_view"
	#el: "#_pivot_table_view"
	el: "#content"

	render: (event) ->
		m = this.model.toJSON()
		m.n = this.numberFormat
		this.$el.html(this.template(m))
		#alert(JSON.stringify(this.model.toJSON()))
		#$("#_pivot_table_view").replaceWith(this.el)
		this

	initialize: (options) ->
		this.model.on('change', this.render, this)
		this.model.on('reset', this.render, this)
#		$("#hidden").append(this.$el.html())

	numberFormat: (n) ->
		result = "<td></td>"
		if n
			ec = "positive-number"
			ec = "negative-number" if n < 0
			result = "<td class=\"number #{ec}\">#{n.toFixed(0)}</td>"
		result
		
	template: _.template("
	<table class='metro'>
		<tr>
			<td class='header'>Category</td>
			<% for (var i = 0; i < column_headers.length; i++) { %>
			<td class='header'><%= column_headers[i] %></td>
			<% } %>
			<td class='header'>Average</td>
			<td class='header'>Total</td>
		</tr>
		<% for (var ri = 0; ri < data.length; ri++) { %>
			<tr>
				<td><%= row_headers[ri] %></td>
			<% for (var ci = 0; ci < data[ri].length; ci++) { %>
				<%= n(data[ri][ci]) %>
			<% } %>
				<%= n(row_averages[ri]) %>
				<%= n(row_totals[ri]) %>
			</tr>
		<% } %>
		<tr>
			<td>Total</td>
			<% for (var i = 0; i < column_totals.length; i++) { %>
			<%= n(column_totals[i]) %>
			<% } %>
			<%= n(average) %>
			<%= n(total) %>
		</tr>
	</table>")
})

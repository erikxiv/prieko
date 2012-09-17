//= require main

window.eco.views.patterns = Backbone.View.extend({
	el: "#_patterns_table_view"
#	el: "#content"
	selected: null
	selected_index: -1

	render: (event) ->
		window.eco.debug.log_event("patterns.render", event)
		this.$el.html(this.template({data:this.model.toJSON()}))
		this

	initialize: (options) ->
		window.eco.debug.log_event("patterns.initialize", options)
		this.model.on('reset', this.render, this)

	template: _.template("
	<table class=\"metro\">
		  <tr class=\"metro\">
		    <td class=\"header\">Pattern</th>
		    <td class=\"header\">Category</th>
		  </tr>
		<% for (var i = 0; i < data.length; i++) {
			var pattern = data[i]; %>
		  <tr class=\"pattern\" data-index=\"<%=i%>\" data-cid=\"<%=pattern.cid%>\">
		    <td class=\"\"><%=pattern.pattern%></td>
			<td class=\"\"><%=pattern.category%></td>
		  </tr>
		<% } %>
		</table>")
})
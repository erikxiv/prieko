//= require main

window.eco.views.pivotview_popup = Backbone.View.extend({
	el: '#pivot_view_menu'

	render: (event) ->
		this.$el.html(this.template())
		this

	initialize: ->
		# Listen to router events to update hrefs of links
		window.eco.state.router.on('change', this.render, this)

	events:
		"click a" : "filter"

	filter: (e) ->
		# Modify url and trigger change
		window.eco.state.router.navigate($(e.currentTarget).attr("href"), {trigger: true})

	template: _.template("
		<div class=\"column\">
			<a href=\"#<%=window.eco.state.path+window.eco.state.router.modifyQuery(\"PivotView\",\"Graph\")%>\" class=\"nav\">Graph</a><br/>
			<a href=\"#<%=window.eco.state.path+window.eco.state.router.modifyQuery(\"PivotView\",\"Table\")%>\" class=\"nav\">Table</a><br/>
		</div>
	")
})
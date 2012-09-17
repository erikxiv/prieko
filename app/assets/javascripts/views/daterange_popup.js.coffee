//= require main

window.eco.views.daterange_popup = Backbone.View.extend({
	el: '#date_range_filter_menu'

	render: (event) ->
		window.eco.debug.log_event("daterange_popup.render", event)
		this.$el.html(this.template(this.model.toJSON()))
		this

	initialize: ->
		window.eco.debug.log_event("daterange_popup.initialize", event)
		# Listen to router events to update hrefs of links
		window.eco.state.router.on('change', this.render, this)

	events:
		"click a" : "filter"

	filter: (e) ->
		window.eco.debug.log_event("daterange_popup.filter", event)
		# Modify url and trigger change
		window.eco.state.router.navigate($(e.currentTarget).attr("href"), {trigger: true})

	template: _.template("
	<div class=\"column\">
		<% for (var i = 0; i < special.length; i++) {
			var d = special[i]; %>
		<a href=\"#<%=window.eco.state.path+window.eco.state.router.modifyQuery(d['filter-name'],d['filter-value'])%>\" class=\"nav\"><%= d.label %></a><br/>
		<% } %>
	</div>
	<div class=\"column\">
		<% for (var i = 0; i < years.length; i++) {
			var d = years[i]; %>
		<a href=\"#<%=window.eco.state.path+window.eco.state.router.modifyQuery(d['filter-name'],d['filter-value'])%>\" class=\"nav\"><%= d.label %></a><br/>
		<% } %>
	</div>
	<div class=\"column\">
		<% for (var i = 0; i < months.length; i++) {
			var d = months[i]; %>
		<a href=\"#<%=window.eco.state.path+window.eco.state.router.modifyQuery(d['filter-name'],d['filter-value'])%>\" class=\"nav\"><%= d.label %></a><br/>
		<% } %>
	</div>	
	<div class=\"nofloat\"></div>
	
	")
})
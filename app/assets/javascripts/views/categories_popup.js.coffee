//= require main

window.eco.views.categories_popup = Backbone.View.extend({
	el: '#category_filter_menu'

	render: (event) ->
		window.eco.debug.log_event("categories_popup.render", event)
		cobj = this.model.toJSON()
		clist = []
		for own attr, value of cobj
			clist.push('name': attr, 'value': value)
		this.$el.html(this.template({categories: clist}))
		this

	initialize: ->
		window.eco.debug.log_event("categories_popup.initialize", null)
		# Listen to model to update view if category list is updated
		this.model.on('change', this.render, this)
		# Listen to router events to update hrefs of links
		window.eco.state.router.on('change', this.render, this)

	events:
		"click a" : "filter"

	filter: (e) ->
		window.eco.debug.log_event("categories_popup.filter", event)
		# Modify url and trigger change
		window.eco.state.router.navigate($(e.currentTarget).attr("href"), {trigger: true})

	template: _.template("
		<div class=\"column\">
			<a href=\"#<%=window.eco.state.path+window.eco.state.router.modifyQuery(\"Category\")%>\" class=\"nav\">All</a><br/>
			<% for (var i = 0; i < categories.length; i++) { 
				var category = categories[i]; %>
			<a href=\"#<%=window.eco.state.path+window.eco.state.router.modifyQuery(\"Category\",category.value || 'Uncategorized')%>\" class=\"nav\"><%=category.value || 'Uncategorized'%></a><br/>
			<% } %>
		</div>
	")
})
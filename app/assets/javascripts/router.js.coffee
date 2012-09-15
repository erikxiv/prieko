//= require main

window.eco.router = Backbone.Router.extend({
	routes: {
		"pivot" : "pivot",
		"list" : "list",
		"patterns" : "patterns",
		"*other" : "defaultRoute" 
	},
	path: ""
	parameters: {}
	handlers: {'change': []}
	
	pivot: (params) ->
		this.requestData() if this.handleQuery("pivot", params || {})
		if params && params["PivotView"] == "Table"
			window.eco.state.views.pivot_table.render()
			#$("#content").html(window.eco.state.views.pivot_table.el)
		else
			window.eco.state.views.pivot_graph.render()
			#$("#content").html(window.eco.state.views.pivot_graph.el)

	list: (params) ->
		this.requestData() if this.handleQuery("list", params || {})
		#$("#content").html(window.eco.state.views.list.el)
		window.eco.state.views.list.render()

	patterns: (params) ->
		this.requestData() if this.handleQuery("patterns", params || {})
		#$("#content").html(window.eco.state.views.patterns.el)
		window.eco.state.views.patterns.render()
	
	defaultRoute: (other) ->
		alert("unrecognized route: " + other)

	toJSON: () ->
		{path: this.path, parameters: this.parameters}
		
	on: (eventType, action, obj) ->
		this.handlers[eventType].push({"action":action,"this":obj}) if this.handlers[eventType]
		
	# Request new data
	requestData: () ->
		window.eco.state.verification_pivot.fetch()
		window.eco.state.verifications.fetch()
		
	# Returns a copy of the query with added/removed parameters (empty or nonexistent values = remove parameter)
	# Names and values should be a comma-separated string
	modifyQuery: (names, values) ->
		mq = {}
		for own key,value of this.parameters
			mq[key] = value
		nameArray = if names then names.split(",") else []
		valueArray = if values then values.split(",") else []
		for i in [0..nameArray.length-1]
			if valueArray[i]
				mq[nameArray[i]] = valueArray[i]
			else
				delete mq[nameArray[i]]
		q = $.param(mq)
		if q.length > 0
			"?" + q
		else
			""
		
	handleQuery: (path, params) ->
		params = params || {}
		queryChanged = JSON.stringify(this.parameters) != JSON.stringify(params)
		this.path = path
		this.parameters = params
		window.eco.state.path = path
		window.eco.state.parameters = params
		console.log("handleQuery: " + path + this.modifyQuery() + " queryChanged: " + queryChanged)
		# Update query object
		that = this
		# window.spa.query.parse(event.queryString)

		# Update displayed filters
		if (params["DateRange"])
			$("#date_range_filter_value").html(params["DateRange"])
		else if (params["Year"])
			if (params["Month"])
				$("#date_range_filter_value").html(params["Year"]+"-"+params["Month"])
			else
				$("#date_range_filter_value").html(params["Year"])
		else
			$("#date_range_filter_value").html("All")
		if (params["Category"])
			$("#category_filter_value").html(params["Category"])
		else
			$("#category_filter_value").html("All");
		if (params["PivotView"])
			$("#pivot_view_value").html(params["PivotView"])
		
		# Change all page links to include query strings
		$('a.header_menu_item').attr('href', ->
			"#" + $(this).html().toLowerCase() + "?" + $.param(params)
		)
		# Change all nav links to include query strings
		# $('a.nav').attr('href', ->
		# 	data_filter_name = $(this).attr('data-filter-name')
		# 	data_filter_value = $(this).attr('data-filter-value')
		# 	"#" + path + "?" + that.modifyQuery(params, data_filter_name, data_filter_value)
		# 	# return event.path.replace(/^/,'#').replace(/$/,window.spa.query.copy(data_filter_name,data_filter_value).toString())
		# )
		# // Change export query
		# $('#_export_button').attr('href','verifications.csv' + window.spa.query);
		
		# Notify event listeners
		for handler in this.handlers.change
			handler.action.call(handler["this"],path, params, this)
		
		queryChanged
})
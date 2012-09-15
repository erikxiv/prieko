# setup namespace
window.eco = window.eco || {}
window.eco.config = window.eco.config || {}
window.eco.views = window.eco.views || {}
window.eco.models = window.eco.models || {}
window.eco.collections = window.eco.collections || {}
window.eco.state = window.eco.state || {}
window.eco.state.views = window.eco.state.views || {}
window.eco.debug = window.eco.debug || {}

$ ->
	# Router
	window.eco.state.router = new window.eco.router()
	# Initiate backbone addressing
	Backbone.history.start({silent: true})
	# Initialize state
	window.eco.state.category = window.eco.state.router.parameters["Category"] || "All"
	window.eco.state.daterange = { 
		daterange: window.eco.state.router.parameters["DateRange"], 
		year: window.eco.state.router.parameters["Year"],
		month: window.eco.state.router.parameters["Month"]
	}
	window.eco.state.categories = new window.eco.models.categories()
	window.eco.state.dateranges = new window.eco.models.daterange()
	window.eco.state.verifications = new window.eco.collections.verifications()
	window.eco.state.verification_pivot = new window.eco.models.verification_pivot()
	
	# Master view
	masterview = new window.eco.views.master({model: window.eco.state.router})
	masterview.render()
	# Categories Popup view
	categoriesview = new window.eco.views.categories_popup({model: window.eco.state.categories})
	categoriesview.render()
	# Daterange Popup view
	daterangesview = new window.eco.views.daterange_popup({model: window.eco.state.dateranges})
	daterangesview.render()
	# PivotView Popup view
	pivotview = new window.eco.views.pivotview_popup({model: {}})
	pivotview.render()
	# Pivot views
	window.eco.state.views.pivot_graph = new window.eco.views.pivot_graph({model: window.eco.state.verification_pivot})
	window.eco.state.views.pivot_table = new window.eco.views.pivot_table({model: window.eco.state.verification_pivot})
	# List view
	window.eco.state.views.list = new window.eco.views.list({model: window.eco.state.verifications})
	# Patterns view
	window.eco.state.views.patterns = new window.eco.views.patterns({model: {}})
	window.eco.state.views.patterns.render()
	
	# Go to requested page
	starturl = window.location.hash || "#pivot"
	window.eco.state.router.navigate("", {replace: true}) # route does not seem to be triggered unless url has changed
	window.eco.state.router.navigate(starturl, {trigger: true, replace: true})
	# Get data
	window.eco.state.categories.fetch()
	window.eco.state.verification_pivot.fetch()
	window.eco.state.verifications.fetch()

//= require main

window.eco.models.pattern = Backbone.Model.extend({
	defaults : {
	}
	initialize: ->
		# set cid property to model (so as to be able to retrieve it after .toJSON)
		this.set("cid", this.cid)
	url: ->
		url = "/patterns.json"
		url = "/patterns/"+this.get("id")+".json" if this.get("id")
		url
})

window.eco.collections.patterns = Backbone.Collection.extend({
	model: window.eco.models.pattern
	url: ->
		"/patterns.json"# + window.eco.state.router.modifyQuery()
	# Match a verification to an existing pattern (return pattern.id or undefined)
})
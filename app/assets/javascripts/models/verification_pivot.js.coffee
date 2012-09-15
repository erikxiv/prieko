//= require main

window.eco.models.verification_pivot = Backbone.Model.extend({
	defaults : {
		column_headers: []
		row_headers: []
		data: []
		row_averages: []
		row_totals: []
		column_totals: []
		average: 0
		total: 0
	}
	url: ->
		"/verifications/pivot.json" + window.eco.state.router.modifyQuery()
})
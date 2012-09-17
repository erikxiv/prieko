//= require main

window.eco.models.verification_pivot = Backbone.Model.extend({
	defaults : {
		column_type: "year"
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
	recategorize: (verification, old_category) ->
		console.log("recat " + old_category + " > " + verification.get("category") + ": " + verification.get("amount"))
		# get column name
		vdate = new Date(verification.get("verification_date"))
		column_name = vdate.getFullYear()
		if this.get("column_type") == "month"
			column_name = vdate.getMonth() + 1
		else if this.get("column_type") == "day"
			column_name = vdate.getDate()
		if !old_category
			old_category="N/A"
		# get indexes
		column_index = this.get("column_headers").indexOf(column_name)
		old_row_index = this.get("row_headers").indexOf(old_category)
		new_row_index = this.get("row_headers").indexOf(verification.get("category"))
		console.log("recat column_name: " + column_name + " " + column_index + "," + old_row_index + "," + new_row_index + " " + this.get("column_type"))
		# Remove value from old category
		this.get("data")[old_row_index][column_index] = this.get("data")[old_row_index][column_index] - verification.get("amount")
		this.get("row_totals")[old_row_index] = this.get("row_totals")[old_row_index] - verification.get("amount")
		this.get("row_averages")[old_row_index] = this.get("row_averages")[old_row_index] - (verification.get("amount")/this.get("column_headers").length)
		# Do we need to add a new row for the new category?
		if new_row_index == -1
			# new row of data, hopefully we don't need to initialize
			nr = []
			nr[index] = 0 for index in [0..this.get("column_headers").length-1]
			this.get("data").push(nr)
			# new row header, average and total
			this.get("row_headers").push(verification.get("category"))
			this.get("row_totals").push(0)
			this.get("row_averages").push(0)
			new_row_index = this.get("row_headers").length - 1
		# Add value to new category
		this.get("data")[new_row_index][column_index] = this.get("data")[new_row_index][column_index] + verification.get("amount")
		this.get("row_totals")[new_row_index] = this.get("row_totals")[new_row_index] + verification.get("amount")
		this.get("row_averages")[new_row_index] = this.get("row_averages")[new_row_index] + (verification.get("amount")/this.get("column_headers").length)
		# Trigger reset event
		this.trigger("reset")
})
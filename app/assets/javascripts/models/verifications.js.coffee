//= require main

# $ ->
# 	$('#_patterns').click ->
# 		vs = new window.eco.collections.verifications()
# 		vs.fetch({
# 			success: ->
# 				alert(vs.length)
# 		})

window.eco.models.verification = Backbone.Model.extend({
	defaults : {
	}
	initialize: ->
		# set cid property to model (so as to be able to retrieve it after .toJSON)
		this.set("cid", this.cid)
	url: ->
		url = "/verifications.json"
		url = "/verifications/"+this.get("id")+".json" if this.get("id")
		url
})

window.eco.collections.verifications = Backbone.Collection.extend({
	model: window.eco.models.verification
	url: ->
		"/verifications.json" + window.eco.state.router.modifyQuery()
	parse_csv: (csv) ->
		vs = []
		# Split on lines
		lines = csv.split("\n")
		# Detect separator (TODO)
		col_sep = "\t"
		for line in lines
			console.log("Found line: " + line)
			cells = line.split(col_sep)
			if cells.length >= 6 and cells.length <= 7
				sebhash = {
					"raw": line
					"bank": "SEB"
					"verification_id": cells[2].trim()
					"verification_date": cells[1].trim()
					"description": cells[3].trim().toUpperCase()
					"amount": parseFloat(cells[4].trim().replace(/[^0-9\-\,]/g, "").replace(/,/g,"."))
					"balance": parseFloat(cells[5].trim().replace(/[^0-9\-\,]/g, "").replace(/,/g,"."))
				}
				if cells[3].trim().match(/.*\/\d\d\-\d\d\-\d\d$/)
					sebhash["description"] = cells[3].trim().match(/(.*)\/(\d\d\-\d\d\-\d\d)$/)[1].trim()
					sebhash["verification_date"] = "20" + cells[3].trim().match(/(.*)\/(\d\d\-\d\d\-\d\d)$/)[2]
				if cells.length == 7
					"category": cells[6].trim()
				vdate = new Date(sebhash["verification_date"])
				sebhash["month"] = vdate.getMonth()
				sebhash["year"] = vdate.getFullYear()
				vs.push(sebhash)
		this.reset(vs)
      # sebhash = {
      #   :raw => line,
      #   :bank => "SEB",
      #   :verification_id => columns[2].strip,
      #   :verification_date => Date.strptime(columns[1].strip, "%Y-%m-%d"),
      #   :description => UnicodeUtils.upcase(columns[3].strip),
      #   :amount => columns[4].strip.gsub(/[^0-9\-\,]/, "").gsub(/,/,".").to_f,
      #   :balance => columns[4].strip.gsub(/[^0-9\-\,]/, "").gsub(/,/,".").to_f}
      # # check for visa date text field
      # if columns[3].strip =~ /.*\/\d\d\-\d\d\-\d\d$/
      #   sebhash[:description] = UnicodeUtils.upcase(columns[3].strip[/(.*)\/(\d\d\-\d\d\-\d\d)$/, 1].strip)
      #   sebhash[:verification_date] = Date.strptime("20" + columns[3].strip[/(.*)\/(\d\d\-\d\d\-\d\d)$/, 2], "%Y-%m-%d")
      # end
      # sebhash[:month] = sebhash[:verification_date].month
      # sebhash[:year] = sebhash[:verification_date].year
      # if columns.length == 7
      #   sebhash[:category] = columns[6].strip
      # end		
})
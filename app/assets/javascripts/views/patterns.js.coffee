//= require main

window.eco.views.patterns = Backbone.View.extend({
#	id: "_patterns_table_view"
	el: "#content"

	render: (event) ->
		this.$el.html(this.template({}))
		this

	initialize: (options) ->
		#this.model.on('reset', this.render, this)

	template: _.template("
	<table class=\"metro\">
		  <tr class=\"metro\">
		    <td class=\"header\">Pattern</th>
		    <td class=\"header\">Category</th>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro number negative-number\"></td>
		    <td class=\"metro\">Lön</td>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro\">0135640084</td>
		    <td class=\"metro\">Nöje</td>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro\">035314999610</td>
		    <td class=\"metro\">Resa</td>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro\">1371 KONTANT</td>
		    <td class=\"metro\">Nöje</td>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro\">16145 7-ELEV</td>
		    <td class=\"metro\">Cigaretter</td>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro\">17107 7-ELEV</td>
		    <td class=\"metro\">Cigaretter</td>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro\">18116 7-ELEV</td>
		    <td class=\"metro\">Cigaretter</td>
		  </tr>
		  <tr class=\"metro\">
		    <td class=\"metro\">21128 7-ELEV</td>
		    <td class=\"metro\">Cigaretter</td>
		  </tr>
		</table>")
})
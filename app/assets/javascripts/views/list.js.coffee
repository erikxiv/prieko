//= require main

window.eco.views.list = Backbone.View.extend({
	#id: "_list_table_view"
	el: "#content"
	selected: null
	selected_index: -1

	render: (event) ->
		this.$el.html(this.template({data:this.model.toJSON()}))
		this

	initialize: (options) ->
		this.model.on('reset', this.render, this)

	events:
		# "click tr.verification" : "edit_category"
		"keypress" : "ignore"
		"keyup input" : "key_up"
		# "keydown tr.verification" : "key_down"
		"click input.category" : "category_edit"
		"focus input.category" : "category_edit"
		"focusout input.category" : "category_unedit"
		
	ignore: (event) ->
		event.stopPropagation()
	key_up: (event) ->
		# Up - 38
		# Down - 40
		# Enter - 13
		# $("#list_debug").html("keyCode: "+event.keyCode)
		index = $(event.currentTarget).parent().parent().data("index")
		# Unfocus if enter key is pressed
		if event.keyCode == 13
			$(event.currentTarget).blur()
		else if event.shiftKey # shift
			if event.keyCode == 40 # down
				# focus on the next category input
				$("tr.verification[data-index="+(index+1)+"] input.category").focus()
			else if event.keyCode == 38 # up
				# focus on the previous category input
				$("tr.verification[data-index="+(index-1)+"] input.category").focus()
	key_down: (event) ->
		#alert("key_down")
		
	submit_category: (event) ->
		alert("hi")
		$(event.currentTarget).html($("input.category").val())
	
	category_edit: (event) ->
		$(event.currentTarget).select()
		
	category_unedit: (event) ->
		# save changes
		cid = $(event.currentTarget).parent().parent().data("cid")
		model = this.model.getByCid(cid)
		newValue = $(event.currentTarget).val()
		#$("#list_debug").html("cid: "+cid+"<br/>"+"oldValue: "+model.get("category")+"<br/>newValue: "+newValue)
		if model.get("category") != newValue
			model.set("category", newValue)
			model.save()
	
	edit_category: (event) ->
		# t = ""
		# for own key,value of event
		# 	if typeof value == "object"
		# 		t = t + key + "=" + value + "\n"
		# alert(t)
		old = this.selected
		old_index = this.selected_index
		this.selected = $(event.currentTarget)
		this.selected_index = this.selected.data("index")
		if old_index != this.selected_index
			if old
				old.removeClass("selected")
				$(".category", old).html($("input.category").val())
			$("tr.verification").removeClass("selected")
			cat_el = $(".category", event.currentTarget)
			cat_el.html("<input class=\"category\" value=\""+cat_el.html()+"\"/>")
#			cat_el.focusout = this.submit_category
			
	template: _.template("
<div id=\"list_debug\"></div>
<table class=\"metro\">
	  <tr>
	    <td class=\"header\">Date</td>
	    <td class=\"header\">Description</td>
	    <td class=\"header\">Amount</td>
	    <td class=\"header\">Category</td>
	  </tr>
	<% for (var i = 0; i < data.length; i++) {
		var verification = data[i]; %>
	  <tr class=\"verification\" data-index=\"<%=i%>\" data-cid=\"<%=verification.cid%>\">
	    <td class=\"\"><%=verification.verification_date%></td>
		<td class=\"\"><%=verification.description%></td>
	    <td class=\"number <%= verification.amount > 0 ? 'positive-number' : 'negative-number' %>\"><%=verification.amount.toFixed(0)%></td>
		<td class=\"category\"><input class=\"category\" value=\"<%=verification.category || 'Uncategorized'%>\"/></td>
	  </tr>
	<% } %>
</table>")
})


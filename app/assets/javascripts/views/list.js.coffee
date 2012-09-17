//= require main

window.eco.views.list = Backbone.View.extend({
	el: "#_list_table_view"
#	el: "#content"
	selected: null
	selected_index: -1

	render: (event) ->
		window.eco.debug.log_event("list.render", event)
		this.$el.html(this.template({data:this.model.toJSON()}))
		this

	initialize: (options) ->
		window.eco.debug.log_event("list.initialize", options)
		this.model.on('reset', this.render, this)

	events:
		# "click tr.verification" : "edit_category"
		"keypress" : "ignore"
		"keyup input" : "key_up"
		"click input.category" : "category_edit"
		"focus input.category" : "category_edit"
		"focusout input.category" : "category_unedit"
		
	ignore: (event) ->
		#window.eco.debug.log_event("list.ignore", event)
		event.stopPropagation()
	key_up: (event) ->
		window.eco.debug.log_event("list.key_up " + event.keyCode, event)
		index = $(event.currentTarget).parent().parent().data("index")
		# Unfocus if enter key is pressed
		if !event.shiftKey && event.keyCode == 13 # enter
			# focus on the next category input
			$("tr.verification[data-index="+(index+1)+"] input.category").focus()
#			$(event.currentTarget).blur()
		else if event.shiftKey # shift
			if event.keyCode == 40 # down
				# focus on the next category input
				$("tr.verification[data-index="+(index+1)+"] input.category").focus()
			else if event.keyCode == 38 # up
				# focus on the previous category input
				$("tr.verification[data-index="+(index-1)+"] input.category").focus()
			else if event.keyCode == 13 # enter
				this.new_pattern(event)
				# focus on the next category input
				console.log("trying to focus back")
				$("tr.verification[data-index="+(index+1)+"] input.category").focus()
	
	new_pattern: (event) ->
		window.eco.debug.log_event("list.new_pattern", event)
		# get verification
		cid = $(event.currentTarget).parent().parent().data("cid")
		model = this.model.getByCid(cid)
		# get new value
		pattern = model.get("description")
		category = $(event.currentTarget).val()
		# set model category to ensure that focus shift event does not set this model to a manually edited one
		old_category = model.get("category")
		model.set("category", category)
		# set model pattern to arbitrary number to ensure server sees pattern as not manually edited
		model.set("pattern_id", -1)
		model.save()
		# Update pivot data locally
		window.eco.state.verification_pivot.recategorize(model, old_category)
		# create/edit pattern
		p = window.eco.state.patterns.find((p) -> p.get("pattern") == pattern)
		if p
			p.set("category", category)
		else
			p = new window.eco.models.pattern({"pattern":pattern, "category":category})
		p.save() # applies pattern on server
		# add to patterns collection
		window.eco.state.patterns.add(p)
		# apply locally
		window.eco.state.verifications.each((v) ->
			# Only change verifications with matching description and not manually edited
			if v.get("description") == pattern and v.get("pattern_id")
				old_category = v.get("category")
				v.set("category", category)
				v.set("pattern_id", -1)
				# don't save, already done server side
				# Update pivot data locally
				window.eco.state.verification_pivot.recategorize(v, old_category)
		)
		# Update categories
		window.eco.state.categories.fetch()
		# rerender list
		this.render()
	
	category_edit: (event) ->
		window.eco.debug.log_event("list.category_edit", event)
		$(event.currentTarget).select()
		
	category_unedit: (event) ->
		window.eco.debug.log_event("list.category_unedit", event)
		# save changes
		cid = $(event.currentTarget).parent().parent().data("cid")
		model = this.model.getByCid(cid)
		newValue = $(event.currentTarget).val()
		oldValue = model.get("category")
		# Is the value changed?
		if model.get("category") != newValue && newValue != 'Uncategorized'
			model.set("category", newValue)
			model.set("pattern_id", null)
			model.save()
			$(event.currentTarget).addClass("single")
			# Update categories
			window.eco.state.categories.fetch()
			# Update pivot data locally
			window.eco.state.verification_pivot.recategorize(model, oldValue)
	
	edit_category: (event) ->
		window.eco.debug.log_event("list.edit_category", event)
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
		<td class=\"category\"><input class=\"category <%=verification.category ? (verification.pattern_id? 'pattern' : 'single') : 'uncategorized'%>\" value=\"<%=verification.category || 'Uncategorized'%>\"/></td>
	  </tr>
	<% } %>
</table>")
})


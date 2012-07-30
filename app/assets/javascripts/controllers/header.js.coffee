# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('.header_menu_item').click (event)->
		changeTab($(this))
	window.spa.changeTab.Header = (x) -> changeTab($("#_#{x}"))
	$.get '/categories.json', (categories) ->
		$('#category_filter_menu').html(tmpl("categories_menu_template",{categories: categories}))
		$('#category_filter_menu a').address -> 
		    $(this).attr('href').replace(/^#/,'')



# Change content when header menu item is clicked
changeTab = (menuElement) ->
	# Recolor header links
	$('.header_menu_item').removeClass('selected')
	menuElement.addClass('selected')
	
	# Get page name to show
	pageName = menuElement.html()
	document.title = "Prieko - " + pageName
	
	# Change content
	# Done by individual controller scripts
	#$('#content').html($('#'+pageName+'_content').html());

	
createQueryObject = ->
	# Store parameters in a hidden object
	parameters = {}
	F = -> {}
	# Replace toString with the query string
	F.toString = ->
		q = ""
		for own attr, value of parameters
			q = q + "&" + attr + "=" + value
		q.replace(/^&/,"?")
	# Method to add/replace a parameter
	F.add = (name, value) ->
		parameters[name] = value
		this
	# Method to remove a parameter
	F.remove = (name) ->
		delete parameters[name]
		this
	# Method to retrieve a parameter
	F.get = (name) ->
		decodeURIComponent(parameters[name]) if parameters[name]
	# Method to clear all parameters
	F.clear = () ->
		parameters = {}
	# Method to set several parameters
	F.addAll = (parameters) ->
		for own attr, value of parameters
			this.add(attr,value)
		this
	# Replace query parameters with supplied query string
	F.parse = (queryString) ->
		this.clear()
		for pair in queryString.split("&")
			if pair
				nameValue = pair.split("=")
				this.add(nameValue[0], nameValue[1])
	# Returns a copy of the query with added/removed parameters (empty or nonexistent values = remove parameter)
	# Names and values should be a comma-separated string
	F.copy = (names, values) ->
		C = createQueryObject().addAll(parameters)
		nameArray = if names then names.split(",") else []
		valueArray = if values then values.split(",") else []
		for i in [0..nameArray.length-1]
			if valueArray[i]
				C.add(nameArray[i], valueArray[i])
			else
				C.remove(nameArray[i])
		C
	# Return new object
	F

# Init global "namespace" variable
window.spa = { 
	header : {}, 
	query : createQueryObject(),
	changeTab : {}
}


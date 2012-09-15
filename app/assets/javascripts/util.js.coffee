//= require main

window.eco.util = window.eco.util || {}

window.eco.util.inspect = (o) ->
	inspect = ""
	for own attr,value of o
		inspect = inspect + attr + ": " + value + "\n"
	inspect
	
window.eco.debug.log_event = (f, e) ->
	window.eco.debug.last_event = e
	console.log("Event " + f)
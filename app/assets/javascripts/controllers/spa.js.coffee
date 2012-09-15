# Init global "namespace" variable
# window.spa = { 
# 	header : {}, 
# 	query : createQueryObject(),
# 	changeTab : {}
# }

$ ->
	window.spa.query = window.spa.modules.get("query")()

initialize = ->
	# Store parameters in a hidden object
	parameters = {}
	F = -> {}
	# Return new object
	F

createRegister = ->
	# Store parameters in a hidden object
	modules = {}
	F = -> {}
	F.register = (name, module) ->
		modules.name = module
		this
	F.get = (name) ->
		modules.name
	# Return new object
	F

window.spa = {
	header: {}
	modules: createRegister()
	changeTab: {}
}

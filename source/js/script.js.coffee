#= require google-analytics

class Application
	constructor: ->
	
		@_plugins = ->
			# initialize all plugins here

		@_content = ->
			# initialize content-helping JS here

		# initial bindings and plug inits go here
		do @_plugins
		do @_content
	
$ ->
	# kick off all JS to be executed at page load and get the app ready for use
	yabp = new Application
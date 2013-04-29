#= require google-analytics

class Application
	constructor: ->
		# initial bindings and plug inits go here
		do @plugins
		do @content
	
	plugins: ->
		# initialize plugins here

	content: ->
		# initialize content-helping JS here

		@isTouchDevice = 'ontouchstart' of document.documentElement
	
$ ->
	# kick off all JS to be executed at page load and get the app ready for use
	yabp = new Application

	console?.log 'this is' + (if yabp.isTouchDevice then "" else "n't") + ' a touch device'
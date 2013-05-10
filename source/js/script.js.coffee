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

		# Application.touch_enabled - true if the client is using a touch device

		# use this with a grain of salt - http://www.stucox.com/blog/you-cant-detect-a-touchscreen/
		@touch_enabled = 'ontouchstart' of document

$ ->
	# kick off all JS to be executed at page load and get the app ready for use
	yabp = new Application
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

# Rewritten version for correcting a screen-zoom issue on rotation in iOS
# By @mathias, @cheeaun and @jdalton
((doc)->
	addEvent = 'addEventListener'
	type = 'gesturestart'
	qsa = 'querySelectorAll'
	scales = [1, 1]
	meta = if qsa of doc then doc[qsa]('meta[name=viewport]') else []

	fix = ->
		meta.content = 'width=device-width,minimum-scale=' + scales[0] + ',maximum-scale=' + scales[1]
		doc.removeEventListener(type, fix, true)

	if (meta = meta[meta.length - 1]) and addEvent of doc
		do fix
		scales = [0.25, 1.6]
		doc[addEvent](type, fix, true)
)(document)
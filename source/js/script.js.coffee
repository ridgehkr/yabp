#= require google-analytics
#= require libs/dummyimage-1.2.2.pack
#= require libs/matchMedia


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


class Breakpoints
	constructor: ->
		@points = # breakpoints matching what's set inside base/_base.scss
			smallest: '400px'
			small: '600px'
			medium: '800px'
			large: '1200px'

	# React with a callback function at a breakpoint
	#
	# target_bp: the Breakpoints.points value to respond to
	# relation: respond above or below breakpoint
	# callback: function to execute if breakpoint params are met
	react: (target_bp = @points.large, relation = 'above', callback) ->
		# format: 'all and (@relation-width: @target_bp)'
		query_string = 'all and (' + (if relation == 'above' then 'min' else 'max') + '-width: ' + target_bp + ')'
		mql query_string, (mql) ->
			callback?() if mql.matches

class Application
	constructor: ->
		do @plugins
		do @content
	
	# initialize plugins here
	plugins: ->
		# placeholder images
		do DummyImage.generate

	# initialize content-helping JS here
	content: ->

$ ->
	yabp = new Application

	bp = new Breakpoints
	bp.react bp.points.large, 'above', ->
		console?.log "Hi! I'm your browser and I'm wider than #{bp.points.large}"
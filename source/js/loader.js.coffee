# All javascripts should be loaded from this file.

# using yepnope for script loading
#= require libs/yepnope-1.5.min

yepnope [
	{
		# Add oldIE support for CSS3 selectors and media queries
		# the pollyfill script loads the following via Sprockets:
		#	- selectivizr 1.0.2
		#	- respond 1.1.0
		test: CSSMediaRule?
		nope: ['js/ie-polyfill.js']
	},
	{
		# if IE, we need jQuery. Otherwise, Zepto will do just fine
		test: '__proto__' of {}
		yep: '//cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js'
		nope: '//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js'
		complete: ->
			# use local jQuery fallback if neither Zepto nor jQuery loaded
			!Zepto? and !window.jQuery? and yepnope('js/libs/jquery-1.9.1.min.js')
	},
	{
		# Load generic scripts for everyone
		load: ['js/script.js']
	}
]
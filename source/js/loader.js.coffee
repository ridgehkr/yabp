# All javascripts should be loaded from this file.

# using Modernizr for the script loading below. Feel free to use just YepNope instead if you don't need Modernizr
#= require libs/modernizr-2.6.2.min

Modernizr.load [
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
		# finally, load dependant scripts for everyone
		load: ['js/script.js']
	}
]
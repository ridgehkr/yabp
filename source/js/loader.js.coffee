# All javascripts should be loaded from this file.

# customized Modernizr with minimum options loaded plus mq()
#= require libs/modernizr-2.6.2.min

Modernizr.load [
	{
		# Add ie7/8 support for CSS3 selectors and media queries
		test: Modernizr.mq 'all'
		nope: ['js/libs/respond.min.js', 'js/libs/selectivizr-1.0.2.min.js']
	},
	{
		# Load jQuery
		load: '//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js'
		complete: ->
			if !window.jQuery
				Modernizr.load 'js/libs/jquery-1.8.3.min.js'
	},
	{
		# Load generic scripts for everyone
		load: ['js/script.js', 'js/google-analytics.js']
	},
	{
		test: Modernizr.touch
		yep: ['js/libs/fastclick-0.4.6.js']
	}
]
# All javascripts should be loaded from this file.

# customized Modernizr with minimum options loaded plus mq()
#= require libs/modernizr-2.6.2.min

Modernizr.load [
	{
		# Add oldIE support for media queries
		test: Modernizr.mq 'only all'
		nope: ['js/libs/respond.min.js']
	},
	{
		# Add oldIE support for CSS3 selectors
		load: 'iegt5!ielt9!js/libs/selectivizr-1.0.2.min.js'
	},
	{
		# Load jQuery
		load: '//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js'
		complete: ->
			if !window.jQuery
				Modernizr.load 'js/libs/jquery-1.9.1.min.js'
	},
	{
		# Load generic scripts for everyone
		load: ['js/script.js']
	}
]
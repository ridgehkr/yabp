class Application
	constructor: ->
		# initial bindings and plug inits go here
		this.plugins()
		this.bindings()
		this.content()
	
	plugins: ->
		# initialize all plugins here
	
	bindings: ->
		# initialize event bindings here

	content: ->
		# initialize content-helping JS here
	
	say: (@message) ->
		console?.log @message

$ ->
	# kick off all JS to be executed at page load and get the app ready for use
	app = new Application

	app.say('Hello, World!');
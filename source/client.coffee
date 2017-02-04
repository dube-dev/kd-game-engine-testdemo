KDGE = require 'kd-game-engine'

setTimeout () ->

	builder = new KDGE.Builder

	# Bulid the game
	game = builder.build_client document.getElementById('demo_canvas'), window
	# -- All sub-engines of the game are now running

	# Engine to update camera position
	game.install_module 'anonymous', new (class
		install: (api) ->
			api.stage.add_entity api.entities.make 'Testing.rectangle',
				x: 60
				y: 400
				w: 400
				h: 20
			api.stage.add_entity api.entities.make 'Testing.ball',
				x: 60
				y: 60
				radius: 10
	)

, 500

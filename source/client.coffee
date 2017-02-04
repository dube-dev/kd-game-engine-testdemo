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
			
			player = api.entities.make 'Testing.ball',
				x: 70
				y: 60
				radius: 20

			api.stage.add_entity player

			# Create control emitter
			controls = new KDGE.Lib.KeyboardControls
				'walk.left': 'A'.charCodeAt(0)
				'walk.right': 68 # 'D'.charCodeAt(0)
			controls.bind document

			# Instanciate basic player controls with keyboard
			controller = new KDGE.Game.Controllers.HumanEntityController \
				controls, player
	)

, 500

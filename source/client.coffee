KDGE = require 'kd-game-engine'
yaml = require 'js-yaml'

setTimeout () ->

	builder = new KDGE.Builder
	loader = new KDGE.Loaders.MapLoader

	# Bulid the game
	game = builder.build_client document.getElementById('demo_canvas'), window
	# -- All sub-engines of the game are now running

	mapObject = yaml.safeLoad \
	"""
	meta:
	  start: [70, 60]
	platforms:
	  - type: 'rect'
	    data: [10,400,780,20]
	  - type: 'poly'
	    data:
	      position: [200,300]
	      points:
	      - [200,400]
	      - [500,300]
	      - [780,400]
	"""
	console.log mapObject

	game.on 'init', () ->
		
		loader.load_map game, mapObject

		# game.stage.add_entity game.entities.make 'Testing.rectangle',
		# 	x: 60
		# 	y: 400
		# 	w: 400
		# 	h: 20
		
		player = game.entities.make 'Testing.ball',
			x: mapObject.meta.start[0]
			y: mapObject.meta.start[1]
			radius: 20

		game.stage.add_entity player

		# Create control emitter
		controls = new KDGE.Lib.KeyboardControls
			'walk.left': 'A'.charCodeAt(0)
			'walk.right': 68 # 'D'.charCodeAt(0)
			'walk.jump': 'W'.charCodeAt(0)
		controls.bind document

		# Instanciate basic player controls with keyboard
		controller = new KDGE.Game.Controllers.HumanEntityController \
			controls, player

	game.start()

, 500

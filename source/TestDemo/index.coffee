KDGE = require 'kd-game-engine'

# Create context object (tells game engine if server or client)
context =
	'env': KDGE.Context.ENV_CLIENT

builder = new KDGE.Builder context

# Bulid the game
game = builder.build()

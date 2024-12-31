extends CharacterBody2D



func _process(delta):
	# Get the mouse position in the world
	var mouse_position = get_viewport().get_mouse_position()
	# Move the sprite to the mouse position
	position = mouse_position

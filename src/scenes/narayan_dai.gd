extends CharacterBody2D

const SPEED = 300.0

@onready var narayan_dai: CharacterBody2D = $"."
@onready var narayan_sprite: AnimatedSprite2D = $narayan_sprite

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("key_a", "key_d", "key_s", "key_w")
	velocity = input_direction * SPEED
	
	move_and_slide()

func _process(delta: float) -> void:
	# Flip based on input direction instead of just key press
	if Input.is_action_pressed("key_d"):
		narayan_sprite.flip_h = true
	elif Input.is_action_pressed("key_a"):
		narayan_sprite.flip_h = false

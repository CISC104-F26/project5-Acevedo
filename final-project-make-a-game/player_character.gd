extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		velocity.y = -1 * SPEED
	elif Input.is_action_pressed("move_down"):
		velocity.y = 1 * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	if Input.is_action_pressed("move_left"):
		velocity.x = -1 * SPEED
	elif Input.is_action_pressed("move_right"):
		velocity.x = 1 * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()

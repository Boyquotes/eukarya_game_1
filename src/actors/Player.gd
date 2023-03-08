extends Actor

func _physics_process(delta):
	var direction: = get_direction()
	velocity = calculate_move_velocity(direction)
	velocity = move_and_slide(velocity)
	
func calculate_move_velocity(direction) -> Vector2:
	return speed * direction
	
func get_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-1.0 if Input.is_action_just_pressed("jump") and is_on_floor() else 1.0
	)
	

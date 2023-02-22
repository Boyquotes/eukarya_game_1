extends KinematicBody2D
class_name Actor

export var speed: = Vector2(300.0, 100.0)
export var gravity: = 4000
var velocity: = Vector2.ZERO

func _physics_process(delta):
	velocity.y += gravity * delta
	velocity.y = max(velocity.y, speed.y)
	velocity = move_and_slide(velocity)

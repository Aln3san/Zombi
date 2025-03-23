extends CharacterBody3D

@export var speed = 5
@export var gravity = -1

func _physics_process(delta: float) -> void:
	velocity.y += gravity

	move_and_slide()

	pass

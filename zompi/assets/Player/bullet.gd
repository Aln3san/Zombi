extends Area3D


var speed = 80

func _process(delta: float) -> void:
	position += transform.basis * Vector3(0, 0, -speed) * delta
	pass

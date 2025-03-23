extends CharacterBody3D

@export var speed = 5
@export var gravity = -1
@onready var navigation_agent_3d: NavigationAgent3D = $NavigationAgent3D
@onready var player: CharacterBody3D = $"../Player"

func _ready() -> void:
	$holder/AnimationPlayer.play("mixamo_com")
	pass

func _physics_process(delta: float) -> void:
	velocity.y += gravity
	
	var dir = to_local(navigation_agent_3d.get_next_path_position()).normalized()
	$holder.look_at(player.position)
	velocity = dir * speed
	
	move_and_slide()
	
	pass

func make_path():
	navigation_agent_3d.target_position = player.global_position
	pass

func _on_timer_timeout() -> void:
	make_path()
	pass 

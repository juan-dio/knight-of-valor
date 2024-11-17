extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	Global.health -= 1
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	if Global.health <= 0:
		get_tree().change_scene_to_file("res://scenes/death.tscn")
	else: 
		get_tree().change_scene_to_file(Global.current_scene)

extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	Global.is_alive = false
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout() -> void:
	Global.is_alive = true
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file("res://scenes/death.tscn")

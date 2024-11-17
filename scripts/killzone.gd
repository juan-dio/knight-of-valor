extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	if body.has_method("play_hit_animation"):
		body.play_hit_animation()
		Global.health -= 1
		if Global.health <= 0:
			body.get_node("CollisionShape2D").queue_free()
			Global.is_alive = false
			Engine.time_scale = 0.5
			timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file("res://scenes/death.tscn")

extends Area2D

@onready var timer: Timer = $Timer
@onready var fall_sound: AudioStreamPlayer2D = $FallSound

func _on_body_entered(body: Node2D) -> void:
	Global.health -= 1
	fall_sound.play()
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	if Global.health <= 0:
		get_tree().change_scene_to_file("res://scenes/death.tscn")
	else: 
		#get_tree().change_scene_to_file(Global.current_scene)
		Global.fall = true

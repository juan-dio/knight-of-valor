extends Area2D

@onready var timer: Timer = $Timer
@onready var win_sound: AudioStreamPlayer2D = $WinSound

func _on_body_entered(body: Node2D) -> void:
	win_sound.play()
	Global.freeze = true
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout() -> void:
	Global.freeze = false
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file("res://scenes/win.tscn")

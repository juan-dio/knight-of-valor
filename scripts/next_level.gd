extends Area2D

@onready var timer: Timer = $Timer
@onready var win_sound: AudioStreamPlayer2D = $WinSound

const FILE_BEGIN = "res://scenes/level_"

func _on_body_entered(body: Node2D) -> void:
	win_sound.play()
	Global.freeze = true
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout() -> void:
	Global.freeze = false
	Engine.time_scale = 1.0
	var current_scene_file = get_tree().current_scene.scene_file_path
	var next_level_number = current_scene_file.to_int() + 1
	var next_level_path = FILE_BEGIN + str(next_level_number) + ".tscn"
	Global.current_scene = next_level_path
	get_tree().change_scene_to_file(next_level_path)

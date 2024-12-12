extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.current_scene = "res://scenes/level_1.tscn"
	Global.health = Global.max_health
	Global.score = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass


func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")

func _on_instruction_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/story.tscn")

func _on_setting_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/settings.tscn")

func _on_credits_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")

func _on_quit_button_pressed() -> void:
	get_tree().quit()

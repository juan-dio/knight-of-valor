extends Control

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/story.tscn")

func _on_next_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/items.tscn")

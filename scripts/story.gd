extends Control

#var orders = ['menu', 'story', 'controls', 'items']

func _on_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

func _on_next_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/controls.tscn")

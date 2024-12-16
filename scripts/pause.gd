extends Control

@onready var resume_button: Button = $VBoxContainer/ResumeButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_resume_button_pressed() -> void:
	Global.pause = false
	get_tree().paused = false


func _on_exit_button_pressed() -> void:
	Global.pause = false
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

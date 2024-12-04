extends Control

@onready var exit_button: Button = $VBoxContainer/ExitButton
@onready var victory_sound: AudioStreamPlayer2D = $VictorySound

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	victory_sound.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_exit_button_pressed() -> void:
	Global.current_scene = "res://scenes/level_1.tscn"
	Global.health = Global.max_health
	Global.score = 0
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

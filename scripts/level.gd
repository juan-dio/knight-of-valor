extends Node2D

@onready var player: CharacterBody2D = $Player
@onready var pause_menu: Control = $HUD/PauseMenu

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.position = player.get_position_delta()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.fall:
		player.position = Global.position
		Global.fall = false
	if Input.is_action_just_pressed("pause"):
		pause()
		Global.pause = true
	if !Global.pause:
		unpause()

func pause():
	get_tree().paused = true
	pause_menu.show()

func unpause():
	pause_menu.hide()

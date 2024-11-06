extends Area2D

@onready var game_manager: Node = %GameManager
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var opened = false

func _on_body_entered(body: Node2D) -> void:
	if !opened:
		game_manager.add_chest()
		animated_sprite_2d.play("empty")
		opened = true

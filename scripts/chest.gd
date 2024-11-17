extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

var opened = false

func _on_body_entered(body: Node2D) -> void:
	if !opened:
		Global.add_chest()
		audio_stream_player_2d.play()
		animated_sprite_2d.play("empty")
		opened = true

extends Area2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

#func _on_body_entered(body: Node2D) -> void:
	#Global.add_coin()
	#animation_player.play("pickup")


func _on_body_entered(body: Node2D) -> void:
	if Global.drink_potion():
		animation_player.play("pickup")

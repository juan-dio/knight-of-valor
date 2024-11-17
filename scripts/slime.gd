extends Node2D

var SPEED = 30
var direction = 1

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var hit_flash_animation_player: AnimationPlayer = $HitFlashAnimationPlayer
@onready var kill_animation_player: AnimationPlayer = $KillAnimationPlayer
@onready var killzone: Area2D = $Killzone

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	
	position.x += SPEED * direction * delta


func _on_weakzone_body_entered(body: Node2D) -> void:
	if body.has_method("play_attack"):
		hit_flash_animation_player.play("hit_flash")
		body.play_attack()
		kill_animation_player.play("kill")

extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.health == 3:
		self.play("3")
	elif  Global.health == 2:
		self.play("2")
	else:
		self.play("1")

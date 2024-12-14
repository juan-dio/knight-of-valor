extends CanvasLayer

@onready var health_1: AnimatedSprite2D = $HBoxContainer/HBoxContainer/Health1
@onready var health_2: AnimatedSprite2D = $HBoxContainer/HBoxContainer/Health2
@onready var health_3: AnimatedSprite2D = $HBoxContainer/HBoxContainer/Health3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.health == 3:
		health_1.play("full")
		health_2.play("full")
		health_3.play("full")
	elif  Global.health == 2:
		health_1.play("full")
		health_2.play("full")
		health_3.play("empty")
	elif Global.health == 1:
		health_1.play("full")
		health_2.play("empty")
		health_3.play("empty")
	elif Global.health <= 0:
		health_1.play("empty")
		health_2.play("empty")
		health_3.play("empty")

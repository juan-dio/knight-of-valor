extends Node

var current_scene = "res://scenes/level_1.tscn"
var is_alive = true
var max_health = 3
var score = 0
var health = max_health

func add_coin():
	score += 1
	
func add_chest():
	score += 5

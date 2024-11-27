extends Node

var current_scene = "res://scenes/level_1.tscn"
var freeze = false
var max_health = 3
var health = max_health
var score = 0

func add_coin():
	score += 1
	
func add_chest():
	score += 5

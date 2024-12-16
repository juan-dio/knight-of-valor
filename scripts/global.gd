extends Node

var current_scene = "res://scenes/level_1.tscn"
var pause = false
var position = 0
var fall = false
var freeze = false
var max_health = 3
var health = max_health
var score = 0

func add_coin():
	score += 1
	
func add_chest():
	score += 5

func add_health():
	health += 1
	
func reduce_coin():
	score -= 20

func drink_potion():
	if health < max_health and score >= 20:
		reduce_coin()
		add_health()
		return true
	else:
		return false

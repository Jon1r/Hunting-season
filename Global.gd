extends Node

var fire = false
var sleep = false

var current_level = 0
var levels = ["res://MainMenu.tscn", "res://Map01.tscn", "res://Map02.tscn"]

func restart():
	fire = false
	get_tree().change_scene(levels[current_level])

func next_level():
	fire = false
	current_level += 1
	if current_level <= levels.size()-1:
		get_tree().change_scene(levels[current_level])
	else:
		current_level -= 1
		restart()

func return_to_menu():
	current_level = 0
	get_tree().change_scene(levels[current_level])

extends Node

var fire = false
var sleep = false

var current_level = 0
var levels = 10

func restart():
	fire = false
	get_tree().change_scene("res://Levels/" + current_level + ".tscn")

func next_level():
	fire = false
	current_level += 1
	if current_level <= levels.size()-1:
		get_tree().change_scene("res://Levels/" + current_level + ".tscn")
	else:
		current_level -= 1
		restart()

func return_to_menu():
	current_level = 0
	get_tree().change_scene("res://Menu/MainMenu.tscn")

func select_lvl():
	current_level = 0
	get_tree().change_scene("res://Menu/Lvl select menu.tscn")

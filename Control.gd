extends Control

var level_path : String
var number : String

func _ready():
	$Label.set_text(number)

func _on_Base_button_pressed():
	get_tree().change_scene(level_path)

extends Node


# Declare member variables here. Examples:
var a = 2



# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _on_Button_pressed():
	G.fire = true
	$Button.hide()
	$Timer.start()



func _on_Hunter_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)
	



func _process(delta):
	pass


func _on_MainMenu_pressed():
	G.return_to_menu()


func _on_Replay_pressed():
	G.restart()
	


func _on_Timer_timeout():
	if not G.sleep:
		print('hui')
	else:
		print("hello")
		G.sleep = false
		


func _on_Nextlvl_pressed():
	G.next_level()



func _on_Hunter_iso_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)

extends Node


# Declare member variables here. Examples:
var a = 2



# Called when the node enters the scene tree for the first time.
func _ready():
	$Fall.hide()
	$Next.hide()
	$Button.show()




func _on_Button_pressed():
	G.fire = true
	$Button.hide()
	$Timer.start()



func _on_Hunter_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)
	



func _process(delta):
	if G.sleep:
		$Fall.show()
		G.sleep = false


func _on_MainMenu_pressed():
	G.return_to_menu()


func _on_Replay_pressed():
	G.restart()
	$Fall.hide()
	$Next.hide()


func _on_Timer_timeout():
	if not G.sleep:
		$Next.show()
		if G.current_level == G.levels.size()-1:
			$Next/Nextlvl.hide()


func _on_Nextlvl_pressed():
	G.next_level()
	$Fall.hide()
	$Next.hide()

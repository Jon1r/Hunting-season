extends Node2D

var rabbit = null

signal shoot

export (PackedScene) var Bullet

var positin = global_position
var fire = true

func shoot():
	var dir = Vector2(1,0).rotated($gun_0.global_rotation)
	emit_signal("shoot", Bullet, $gun_0.global_position, dir)
	


# Called when the node enters the scene tree for the first time.
func _ready():
	var fire = true


func _physics_process(delta):
	
	if rabbit != null:
		$gun_0.look_at(rabbit.position)
	if  G.fire and fire:
		
		shoot()
		fire = false
		$Timer.start()
		
		
	


func _on_DetectZone_body_entered(body):
	print('hello')
	if body != self:
		rabbit = body


func _on_DetectZone_body_exited(body):
	rabbit = null




func _on_Button_pressed():
	pass # Replace with function body.


func _on_DetectZone_area_entered(area):
	print(area.name)
	if area != self:
		rabbit = area


func _on_DetectZone_area_exited(area):
		rabbit = null



func _on_Timer_timeout():
	#fire = true
	pass

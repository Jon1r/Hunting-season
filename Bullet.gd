extends Area2D

export (int) var speed

 
var velocity = Vector2()

func start(_position, _direction):
	position = _position
	rotation = _direction.angle()
	velocity = _direction * speed
	print("fire")
	

func _process(delta):
	
	position += velocity * delta
	
func explode():
	queue_free()


func _on_Bullet_body_entered(body):
	explode()




func _on_Bullet_area_entered(area):
	if area.name == "Rabbit":
		G.sleep = true

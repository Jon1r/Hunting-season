extends Area2D

var previos_mouse_position = Vector2()
var is_dragging =false
var touch = false

signal sleep

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _input(event):
		
	if not is_dragging:
		return
	
	#if event.is_action_released("ui_touch"):
	#	previos_mouse_position = Vector2()
	#	is_dragging = false
	
	if is_dragging and event is InputEventScreenDrag and touch:
		position += event.position - previos_mouse_position
		previos_mouse_position = event.position




func _on_Draggable_input_event(viewport, event, shape_idx):
	if event is InputEventScreenTouch:
		get_tree().set_input_as_handled()
		previos_mouse_position = event.position
		is_dragging = true
		







func _on_Button_pressed():
	pass # Replace with function body.


func _on_Rabbit_mouse_entered():
	previos_mouse_position = Vector2()
	touch = true
	print(touch)


func _on_Rabbit_mouse_exited():
	touch = false
	print(touch)

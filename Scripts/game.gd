extends Node2D

@export var plan : int = 0


func _ready() -> void:
	print($Levels.get_children())
	pass
	
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("switch"):
		plan+=1
		
		$Levels.get_children()[plan%3].get_child(0).collision_enabled = true
		$Levels.get_children()[plan%3].modulate.a8 = 255
		$Levels.get_children()[(plan+1)%3].get_child(0).collision_enabled = false
		$Levels.get_children()[(plan+1)%3].modulate.a8 = 50
		$Levels.get_children()[(plan+2)%3].get_child(0).collision_enabled = false
		$Levels.get_children()[(plan+2)%3].modulate.a8 = 50
		
		if plan%3 ==0:
			for i in $Lights.get_children():
				i.color = Color.GREEN
		elif plan%3 ==1:
			for i in $Lights.get_children():
				i.color = Color.RED
		elif plan%3 ==2:
			for i in $Lights.get_children():
				i.color = Color.BLUE


func _on_key_activate(number: int) -> void:
	for i in $Doors.get_children():
		if i.id== number:
			i.queue_free()# Replace with function body.

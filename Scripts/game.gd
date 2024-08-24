extends Node2D

@export var plan : int = 0


func _ready() -> void:
	
	pass
	
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("switch"):
		plan+=1
		$Levels.get_children()[plan%3].position = Vector2(0,0)
		$Levels.get_children()[plan%3].modulate.a8=255
		$Levels.get_children()[(plan+1)%3].position = Vector2(-100,-100)
		$Levels.get_children()[(plan+1)%3].modulate.a8= 255 - 255/3
		$Levels.get_children()[(plan+2)%3].position = Vector2(-200,-200)
		$Levels.get_children()[(plan+2)%3].modulate.a8= 255 - 255/3*2
		print(%Level1.position)
		
		

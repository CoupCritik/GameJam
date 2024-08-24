extends Area2D

@export var id :int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_key_activate(number: int) -> void:
	if number== id:
		queue_free() # Replace with function body.
	print("heh")

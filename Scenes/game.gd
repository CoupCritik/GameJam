extends Node2D

var window1_asset = preload("res://Scenes/window.tscn")
var window1 :Window

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	self.get_viewport().set_embedding_subwindows(false)
	get_viewport().always_on_top = false
	get_viewport().get_window().title = "Psychedelic Jam"
	var new_window :Window = window1_asset.instantiate()
	self.add_child(new_window)
	
	new_window.position = Vector2(300,500)
	new_window.visible = true
	new_window.title = "Window 1"
	new_window.size = Vector2(420,420)
	new_window.get_viewport().transparent = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

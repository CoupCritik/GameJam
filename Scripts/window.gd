extends Window

@onready var camera_2d: Camera2D = $Camera2D
var last_position: = Vector2i.ZERO
var velocity: = Vector2i.ZERO
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	camera_2d.anchor_mode = Camera2D.ANCHOR_MODE_FIXED_TOP_LEFT
	
	transient = true # Make the window considered as a child of the main window
	close_requested.connect(queue_free) # Actually close the window when clicking the close butto
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	velocity = position - last_position
	last_position = position
	camera_2d.position = get_camera_pos_from_window()

func get_camera_pos_from_window()->Vector2i:
	return position + velocity

extends CSGSphere3D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _physics_process(_delta: float) -> void:
	
	pass

func _input(_event: InputEvent) -> void:
	if _event is InputEventMouseButton and _event.button_index == MOUSE_BUTTON_LEFT:
		if _event.is_pressed():
			pass

	if _event is InputEventAction and _event.button_index == KEY_UP:
		if _event.is_pressed():
			pass

extends RigidBody3D



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _physics_process(_delta: float) -> void:
	
	pass

func _input(_event: InputEvent) -> void:
	if _event is InputEventKey and _event.keycode == KEY_UP:
		if _event.is_pressed():
			#print("KEY UP BEING PRESSED!")
			#apply_force(Vector3(0.0,0.0,-1.0))
			apply_impulse(Vector3(0.0,0.0,-1.0))

	if _event is InputEventKey and _event.keycode == KEY_DOWN:
		if _event.is_pressed():
			#print("KEY DOWN BEING PRESSED!")
			#apply_force(Vector3(0.0,0.0,-1.0))
			apply_impulse(Vector3(0.0,0.0,1.0))
			pass

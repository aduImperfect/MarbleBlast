extends RigidBody3D

@export var forward_vector : Vector3 = -global_transform.basis.z
@export var right_vector   : Vector3 = global_transform.basis.x
@export var up_vector      : Vector3 = global_transform.basis.y

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
			apply_impulse(forward_vector)

	if _event is InputEventKey and _event.keycode == KEY_DOWN:
		if _event.is_pressed():
			apply_impulse(-forward_vector)

	if _event is InputEventKey and _event.keycode == KEY_LEFT:
		if _event.is_pressed():
			apply_impulse(-right_vector)

	if _event is InputEventKey and _event.keycode == KEY_RIGHT:
		if _event.is_pressed():
			apply_impulse(right_vector)

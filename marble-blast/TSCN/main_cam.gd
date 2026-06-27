extends Node3D

@export var playerNode : Node3D

@export var currentCamZoomLevel : int = 0
@export var camTotalZoomLevels : int = 5

@export var finalCamPosX : Array[float] = [ 0.0, 0.0, 0.0, 0.0, 0.0 ]
@export var finalCamPosY : Array[float] = [ 0.0, 0.0, 0.0, 0.0, 0.0 ]
@export var finalCamPosZ : Array[float] = [ 0.0, 0.0, 0.0, 0.0, 0.0 ]

@export var camStartingPosX : float = 0.0
@export var camStartingPosY : float = 5.0
@export var camStartingPosZ : float = 10.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	currentCamZoomLevel = 0
	camTotalZoomLevels = 5
	position.x = camStartingPosX
	position.y = camStartingPosY
	position.z = camStartingPosZ
	_reset_finacam_pos()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	_set_finacam_pos_relative(playerNode.position)

	position.x = finalCamPosX[currentCamZoomLevel]
	position.y = finalCamPosY[currentCamZoomLevel]
	position.z = finalCamPosZ[currentCamZoomLevel]

func _reset_finacam_pos() -> void:
	for k in camTotalZoomLevels:
		finalCamPosX[k] = camStartingPosX
		finalCamPosY[k] = camStartingPosY
		finalCamPosZ[k] = camStartingPosZ

func _set_finacam_pos_relative(_pos : Vector3) -> void:
	for k in camTotalZoomLevels:
		finalCamPosX[k] = (currentCamZoomLevel + 1) * camStartingPosX + _pos.x
		finalCamPosY[k] = (currentCamZoomLevel + 1) * camStartingPosY + _pos.y
		finalCamPosZ[k] = (currentCamZoomLevel + 1) * camStartingPosZ + _pos.z

func _input(_event: InputEvent) -> void:
	if _event is InputEventMouseButton and _event.button_index == MOUSE_BUTTON_WHEEL_UP:
		if _event.is_pressed():
			if currentCamZoomLevel != 0:
				currentCamZoomLevel -= 1

	if _event is InputEventMouseButton and _event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
		if _event.is_pressed():
			if currentCamZoomLevel != 4:
				currentCamZoomLevel += 1

	var ifRightPressed : bool = false
	var ifMouseMoved : bool = false
	var horizDirMouseMoved : float = 0.0

	if _event is InputEventMouseButton and _event.button_index == MOUSE_BUTTON_RIGHT:
		if _event.is_pressed():
			ifRightPressed = true

	if _event is InputEventMouseMotion:
		if _event.relative.x != 0:
			ifMouseMoved = true
			horizDirMouseMoved = _event.relative.x

	if (ifRightPressed == true) && (ifMouseMoved == true):
		pass

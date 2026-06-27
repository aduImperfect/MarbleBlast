extends Node3D

@export var playerNode : Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	position.x = playerNode.position.x
	position.y = playerNode.position.y
	position.z = playerNode.position.z

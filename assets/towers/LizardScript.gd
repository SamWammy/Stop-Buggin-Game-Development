extends Sprite2D

@export var color : Vector3
@export var eyeColor : Vector3
@export var blendScale : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	material.set_shader_parameter("inputColor", color)
	material.set_shader_parameter("eyeColor", eyeColor)
	material.set_shader_parameter("blendScale", blendScale)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

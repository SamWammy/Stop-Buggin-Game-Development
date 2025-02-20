extends TextureButton

var startingLabelPosition : Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	startingLabelPosition = $Label.position
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(button_pressed):
		$Label.position = startingLabelPosition + Vector2(0, 0.1 * size.y)
	else:
		$Label.position = startingLabelPosition
	pass

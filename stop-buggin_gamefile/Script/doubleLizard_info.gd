extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_on_hidden()
	pass # Replace with function body.


func _on_hidden() -> void:
	hide()
	pass # Replace with function body.

func _on_double_lizard_mouse_entered() -> void:
	visible = true 
	pass # Replace with function body.


func _on_double_lizard_mouse_exited() -> void:
	hide()
	pass # Replace with function body.

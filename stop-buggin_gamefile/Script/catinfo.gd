extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_on_hidden()
	pass # Replace with function body.


func _on_hidden() -> void:
	hide()
	pass # Replace with function body.



func _on_cat_special_button_mouse_entered() -> void:
	visible = true
	pass # Replace with function body.


func _on_cat_special_button_mouse_exited() -> void:
	hide()
	pass # Replace with function body.

extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hide()
	pass # Replace with function body.


func _on_green_lizard_spawn_button_mouse_entered() -> void:
	visible = true	
	pass # Replace with function body.


func _on_green_lizard_spawn_button_mouse_exited() -> void:
	hide()	
	pass # R

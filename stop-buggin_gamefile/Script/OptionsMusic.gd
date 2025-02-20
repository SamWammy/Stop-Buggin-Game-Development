extends Node2D



func _on_press() -> void:
	var Music_men=get_parent().get_parent().get_parent().get_parent().get_parent().get_node("Music_menu")
	Music_men.show()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

extends Node2D


func _on_press() -> void:
	var Options_menu=get_parent().get_parent().get_parent().get_parent().get_parent().get_node("Options_menu")
	Options_menu.hide()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

extends Node


# Called when the node enters the scene tree for the first time.
func _on_press() -> void:
	get_tree().paused=false
	get_parent().get_parent().queue_free()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

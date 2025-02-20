extends Node

@export var scener : String

# Called when the node enters the scene tree for the first time.
func _on_press() -> void:
	var canva=get_parent().get_parent()
	canva.hide()
	get_tree().paused=false
	get_tree().change_scene_to_file(scener)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

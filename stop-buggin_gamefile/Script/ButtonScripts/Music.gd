
extends Node2D

@export var scenePath : String

func _on_press() -> void:
	print("Music, sweet sweet music")
	get_tree().change_scene_to_file(scenePath)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

extends Node2D

func _on_press() -> void:
	#Unpause the game
	get_tree().paused = false
	
	#Change scene back to the scene
	get_tree().change_scene_to_file(get_parent().get_parent().get_parent().get_parent().scene_file_path)
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

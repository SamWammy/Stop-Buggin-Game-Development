extends Node2D

@export var scenePath : String
@export var mapname: String

func _on_press() -> void:
	get_tree().paused=false
	if(LevelUnlock.is_level_unlocked(mapname) or mapname not in LevelUnlock.levels.keys()):
		print("UNLOCKED")
		get_tree().change_scene_to_file(scenePath)
	else:
		print("LOCKED")
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

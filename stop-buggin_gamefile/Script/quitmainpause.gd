extends Node2D
@onready var LUPopupquitmain= preload("res://Scenes/QuitMain.tscn") as PackedScene

@export var scenePath : String
@export var mapname: String
@export var scenez: String


func _on_press() -> void:
	var PopUp=LUPopupquitmain.instantiate()
	add_sibling(PopUp)
	#get_tree().change_scene_to_file(scenePath)
	if(LevelUnlock.is_level_unlocked(mapname) or mapname not in LevelUnlock.levels.keys()):
		print("UNLOCKED")
	else:
		print("LOCKED")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

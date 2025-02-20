class_name Map_Menu
extends Control

@onready var starter_map: TextureButton = $StarterMap as TextureButton
@onready var river_map: TextureButton = $RiverMap as TextureButton
@onready var swirl_map: TextureButton = $SwirlMap as TextureButton
@onready var jungle_map: TextureButton = $JungleMap as TextureButton


@onready var starter_level = preload("res://Scenes/UI/UI Demos/starter_map_demo.tscn") as PackedScene
@onready var Jungle_level = preload("res://Scenes/UI/UI Demos/jungle_map_demo.tscn") as PackedScene
@onready var River_level =  preload("res://Scenes/UI/UI Demos/river_map_demo.tscn") as PackedScene
@onready var swirl_level = preload("res://Scenes/UI/UI Demos/swirl_map_demo.tscn") as PackedScene
@onready var level_unlocker= LevelUnlock


@onready var RiverMapDemoLock: TextureRect = $RiverMapDemoLock as TextureRect
@onready var SwirlMapDemoLock: TextureRect = $SwirlMapDemoLock as TextureRect
@onready var JungleMapDemoLock: TextureRect= $JungleMapDemoLock as TextureRect



#follow code organization above for other levels
func _ready():
	if level_unlocker.levels.get("RiverMapDemo") == true:
		RiverMapDemoLock.hide()
	if level_unlocker.levels.get("SwirlMapDemo") == true:
		SwirlMapDemoLock.hide()
	if level_unlocker.levels.get("JungleMapDemo") == true:
		JungleMapDemoLock.hide()
	starter_map.button_down.connect(Starter_map_pressed)
	jungle_map.button_down.connect(Jungle_map_pressed)
	river_map.button_down.connect(river_map_pressed)
	swirl_map.button_down.connect(swirl_map_pressed)
	
func Starter_map_pressed() -> void:
	get_tree().change_scene_to_packed(starter_level)
	
func Jungle_map_pressed() -> void:
	get_tree().change_scene_to_packed(Jungle_level)

func river_map_pressed() -> void:
	get_tree().change_scene_to_packed(River_level)
	
func swirl_map_pressed() -> void:
	get_tree().change_scene_to_packed(swirl_level)

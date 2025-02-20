class_name Yes_Button
extends Node2D

@onready var button: TextureButton = $Button as TextureButton

@export var MAIN_MENU = "res://Scenes/main_menu.tscn"

@export var MAP_MENU = "res://Scenes/map_menu.tscn"

@export var mapname: String


func _on_press() -> void:
	get_tree().paused=false
	var canva=get_parent().get_parent()
	canva.hide()
	
	get_tree().change_scene_to_file(MAP_MENU)

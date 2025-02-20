class_name Pause_Button
extends Control

@onready var button: TextureButton = $Button as TextureButton

@onready var PAUSE_MENU = preload("res://Scenes/pause_menu.tscn") as PackedScene
@export var Pause_Menu: Control

func _ready():
	button.button_down.connect(Pause_Button_pressed)
	
func Pause_Button_pressed() -> void:
		get_tree().paused=true
		var menu = PAUSE_MENU.instantiate()
		menu.set_z_index(11)
		add_sibling(menu)
		
		#get_tree().change_scene_to_file("res://Scenes/pause_menu.tscn")

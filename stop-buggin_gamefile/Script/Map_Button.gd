extends Node2D


@onready var Confirm_MENU = preload("res://Scenes/Confirm_Menu.tscn") as PackedScene

func _on_press() -> void:
	var menu = Confirm_MENU.instantiate()
	menu.set_z_index(20)
	add_sibling(menu)
	
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

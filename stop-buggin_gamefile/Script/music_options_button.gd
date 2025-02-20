extends Button

@onready var button: Button = $"."

@onready var PAUSE_MENU = preload("res://Scenes/pause_menu.tscn") as PackedScene

func _ready():
	button.button_down.connect(Pause_Button_pressed)
	
func Pause_Button_pressed() -> void:
		get_tree().change_scene_to_file("res://Scenes/pause_menu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

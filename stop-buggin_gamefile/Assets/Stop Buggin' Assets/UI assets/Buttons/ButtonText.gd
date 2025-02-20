extends Node2D

@export var inputText : String

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	$TextureButton/Label.text = inputText
	$TextureButton.connect("button_up", $ButtonFunction._on_press)
	pass # Replace with function body.

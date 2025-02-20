extends Node2D

@export var bus_name : String
var bus_index : int

var slider


func _on_press() -> void:
	AudioServer.set_bus_volume_db(bus_index,-80)
	slider.value=slider.min_value

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	slider =$"../.."
	$".".connect("pressed", Callable(self, "_on_press"))
	bus_index=AudioServer.get_bus_index(bus_name)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

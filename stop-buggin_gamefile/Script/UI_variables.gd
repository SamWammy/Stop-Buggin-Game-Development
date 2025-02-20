extends CanvasLayer

@export var map_node: Node2D
@export var base_speed : int
@export var towerScale = Vector2(1, 1)
@export var waves : Node2D

func _ready() -> void:
	Globals.map_node=map_node
	print(map_node.name)
	$PlayButton.path=map_node.get_node("Spawner/Path2D/PathFollow2D")
	$Panel/FlowContainerSpecials/CatSpecialButton.path=map_node.get_node("Spawner/Path2D/PathFollow2D")
	$PlayButton.waves = waves.GenWaves()
	for lizardButton in $Panel/FlowContainerTowers.get_children():
		lizardButton.newScale = towerScale

func get_base_speed() -> int:
	return base_speed

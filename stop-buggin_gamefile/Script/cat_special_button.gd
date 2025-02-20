extends TextureButton

var cat =  preload("res://Scenes/cat.tscn")
@onready var play = $"../../../PlayButton"
@onready var timer  = $Timer
@onready var sprite = $cat
@onready var cooldown = $ProgressBar
@export var path : PathFollow2D
@export var cost = 25
@export var controller : Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	button_down.connect(_cat_special)

func _process(delta: float) -> void:
	cooldown.value = 30 - ceil(timer.time_left)
	if timer.time_left != 0.0:
		sprite.modulate = Color(0.5, 0.5, 0.5, 1)
	else:
		sprite.modulate = Color(1, 1, 1, 1)
		
	if play.is_processing():
		timer.paused = false
	else:
		timer.paused = true		
		sprite.modulate = Color(0.5, 0.5, 0.5, 1)
		
func _cat_special() -> void:
	print(timer.is_stopped())
	print(timer.get_time_left())
	if controller.money >= cost and play.is_processing() and timer.is_stopped():
		controller.money -= cost
		var path_Instance = path.duplicate()
		path_Instance.name = "cat_path"
		path_Instance.progress_ratio = 1.0
		var cat_instance = cat.instantiate()
		cat_instance.path = path_Instance
		cat_instance.set_z_index(4)
		cat_instance.play = play
		path_Instance.add_child(cat_instance)
		path.add_sibling(path_Instance)
		
		var current_scene_name = get_tree().get_current_scene().get_name()
		cat_instance.speed = 100
		if current_scene_name == "SwirlMapDemo":
			cat_instance.speed *= 2
			cat_instance.scale = Vector2(4, 4)
		timer.start()

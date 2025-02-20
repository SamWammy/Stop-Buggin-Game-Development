extends TextureButton

var cat = preload("res://Scenes/nuke.tscn")
@onready var play = $"../../../PlayButton"
@onready var timer = $Timer
@onready var timer2 = $Timer2
@onready var sprite = $Spraybottle
@onready var cooldown = $ProgressBar
@export var cost = 25
@export var controller : Node2D
@export var starter_position : Vector2 = Vector2(500, 320)
@export var swirl_position : Vector2 = Vector2(500, 100) 
@export var river_position : Vector2 = Vector2(500, 250)  
@export var jungle_position : Vector2 = Vector2(350, 320) 
var nuke_instance : Node = null  

func _ready() -> void:
	button_down.connect(_nuke_special)

func _process(delta: float) -> void:
	cooldown.value = 60 - ceil(timer.time_left)
	if timer.time_left != 0.0:
		sprite.modulate = Color(0.5, 0.5, 0.5, 1)
	else:
		sprite.modulate = Color(1, 1, 1, 1)
		
	if play.is_processing():
		timer.paused = false
	else:
		timer.paused = true		
		sprite.modulate = Color(0.5, 0.5, 0.5, 1)
func _nuke_special() -> void:
	print(timer.is_stopped())
	print(timer.get_time_left())
	if controller.money >= cost and play.is_processing() and timer.is_stopped():
		controller.money -= cost
		nuke_instance = cat.instantiate()
		nuke_instance.set_z_index(4)  
		nuke_instance.play = play
		var manual_position_parent = Node2D.new()  
		manual_position_parent.visible = true
		get_parent().get_parent().get_parent().add_child(manual_position_parent)
		manual_position_parent.add_child(nuke_instance)
		var current_scene_name = get_tree().get_current_scene().get_name()
		print(current_scene_name)
		if current_scene_name == "RiverMapDemo":
			nuke_instance.scale = Vector2(10, 10)
			nuke_instance.position = river_position
		if current_scene_name == "JungleMapDemo":
			nuke_instance.scale = Vector2(12, 12)
			nuke_instance.position = jungle_position
		if current_scene_name == "StarterMapDemo":
			nuke_instance.scale = Vector2(10, 10)
			nuke_instance.position = starter_position
		if current_scene_name == "SwirlMapDemo":
			nuke_instance.scale = Vector2(9, 9)
			nuke_instance.position = swirl_position
		timer2.start()
		timer.start()


func _on_timer_2_timeout() -> void:
	if nuke_instance:
		nuke_instance.queue_free()  
		nuke_instance = null  
		
	

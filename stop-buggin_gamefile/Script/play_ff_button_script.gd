extends Control
@onready var PlayButton = $PlayButton
@onready var FastForwardButton = $FastForwardButton

#These paths generate are for accesing the Path2D and PathFollow2D for each map. In the game scene give the UI node a refrence to the "Map Node" in the inspector.

@onready  var path_follower_path =  NodePath("../../" + str(get_parent().get_parent().get_map_node()) + "/Path2D/PathFollow2D")
@onready  var path_path = NodePath("../../" + str(get_parent().get_parent().get_map_node()) + "/Path2D")
@onready  var path_follower : PathFollow2D
@onready  var path : Path2D


var normal = preload("res://Assets/Stop Buggin' Assets/UI assets/fast-forward-24 FINAL with outline.png")
var pressed = preload("res://Assets/Stop Buggin' Assets/UI assets/fast-forward-24 Clicked.png")
var timer = Timer.new()
var fly =  preload("res://Scenes/enemy.tscn")
var on: bool = false
var parent = get_parent()
@onready var speed: int = get_parent().get_parent().get_base_speed()
#var speed: int = 35
var round=0
var enemies=5


func _ready() -> void:
	print(parent)
	path_follower = get_node(path_follower_path)
	path = get_node(path_path)
	set_process(false)
	PlayButton.connect("pressed", Play_Pressed)
	FastForwardButton.connect("pressed", FF_Pressed)
	FastForwardButton.hide()
	timer.wait_time=1
	path_follower.progress = 0.0
	FastForwardButton.texture_normal=normal
	

func Play_Pressed():
	PlayButton.hide()
	FastForwardButton.show()
	start_round()
	
func FF_Pressed():
	on=!on
	if on==true:
		FastForwardButton.texture_normal=pressed
		speed*=2
	else:
		FastForwardButton.texture_normal=normal
		speed/=2
	
func start_round():
	round+=1
	enemies=enemies*2
	path_follower.progress = 0.0
	set_process(true)
	#timer.start()  
	
func _on_Timer_timeout():
		timer.stop()
	
	
	
func spawn_enemy():
	var enemy_Instance = fly.instantiate()
	enemy_Instance.position = path_follower.position  
	enemy_Instance.show()
	add_child(enemy_Instance)
	
	
	
func _process(delta):
	
	path_follower.progress+=speed*delta
	
	#if enemies!=0:
		#timer.start()
	#spawn_enemy()
		#enemies -= 1
		
	
	if path_follower.progress_ratio >= 1:
		path_follower.progress = 0.0
		set_process(false)
		New_Round()
	
func New_Round():
	FastForwardButton.texture_normal=normal
	PlayButton.show()
	FastForwardButton.hide()
	speed=35
	

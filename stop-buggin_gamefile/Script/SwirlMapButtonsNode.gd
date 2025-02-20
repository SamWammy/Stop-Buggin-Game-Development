extends Node
@onready var PlayButton = $PlayButton
@onready var FastForwardButton = $FastForwardButton
@onready  var path_follower = $Path2D/PathFollow2D
@onready  var path = $Path2D
var normal = preload("res://Assets/Stop Buggin' Assets/UI assets/fast-forward-24 FINAL with outline.png")
var pressed = preload("res://Assets/Stop Buggin' Assets/UI assets/fast-forward-24 Clicked.png")
var timer = Timer.new()
var fly =  preload("res://Scenes/enemy.tscn")
var speed=100
var round=0
var enemies=5
var on: bool = false


func _ready() -> void:
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
		speed=300
	else:
		FastForwardButton.texture_normal=normal
		speed=150
	
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
		
	
	if path_follower.progress >= 6269.0:
		path_follower.progress = 0.0
		set_process(false)
		New_Round()
	
func New_Round():
	FastForwardButton.texture_normal=normal
	PlayButton.show()
	FastForwardButton.hide()
	speed=100

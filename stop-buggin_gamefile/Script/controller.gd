extends Node2D

@export var playerhealth = 10
@export var roundcounter = 0

@export var money = 150

var gameOverScreen = preload("res://Scenes/GameOver.tscn")

var youwin = preload("res://Scenes/Winningscreen.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if(roundcounter == 16):
		#Create an instance of the gameover scene
		var winning = youwin.instantiate()
		#Adding it as a child of the scene, not the UI. I don't want to figure out how to not hard code it like this
		get_parent().get_parent().get_parent().add_child(winning)
		
		#Bring it to the front, scale it down and offset it to the center of the screen
		winning.set_z_index(200)
		winning.scale = Vector2(0.5, 0.5)
		winning.global_position = (get_viewport_rect().size/2.0) - ((winning.size * winning.scale) / 2)
		
		#Hide the UI
		get_parent().get_parent().hide()
		
		#Pause the game
		get_tree().paused = true
	if(playerhealth == 0):
		#Create an instance of the gameover scene
		var gameOverInstance = gameOverScreen.instantiate()
		#Adding it as a child of the scene, not the UI (changing to add it to the UI so towers dont show over. I don't want to figure out how to not hard code it like this
		#get_parent().get_parent().get_parent().add_child(gameOverInstance)
		get_parent().get_parent().add_child(gameOverInstance)
		
		#Bring it to the front, scale it down and offset it to the center of the screen
		gameOverInstance.set_z_index(200)
		gameOverInstance.scale = Vector2(0.5, 0.5)
		gameOverInstance.global_position = (get_viewport_rect().size/2.0) - ((gameOverInstance.size * gameOverInstance.scale) / 2)
		
		#Hide the UI
		#get_parent().get_parent().hide()
		
		#Pause the game
		get_tree().paused = true

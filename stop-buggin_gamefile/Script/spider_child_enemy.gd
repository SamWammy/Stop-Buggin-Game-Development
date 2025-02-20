#This script is essentially identical to enemy.gd. This is for the spider children because 
#you cant preload a script into itself, or in other words the parent spider was
extends CharacterBody2D

enum EnemyType {DRAG,CATT,BEE,SPIDER_P,SPIDER_C}

var child = preload("res://Scenes/Enemy_Spider_C.tscn")

@onready var sprite = $AnimatedSprite2D
@onready var health_bar : ProgressBar
@export var enemy : EnemyType
@export var speed : float
var fastForwardButton : TextureButton
var path : PathFollow2D
var health : Node2D 
@export var unit_health : int
@export var damage = 1

func _ready() -> void:
	health_bar = $HealthBar
	if enemy != 4:
		pass
		

func _process(delta: float) -> void:
	if(path):
		var previous_position = get_parent().position
		path.progress += speed * delta
		var diff = (get_parent().position.x-previous_position.x)
		var min_diff : float
		if Engine.time_scale == 1.0:
			min_diff = 0.1
		else:
			min_diff = .2
		if diff != 0 and abs(diff) > min_diff: 
			if sprite: #i think sometimes the bug would die/disapear and would cause a null pointer
				sprite.scale.x = int(diff/abs(diff))
		if(path.progress_ratio >= .98):
			if(health.playerhealth <= 0):
				health.playerhealth = 0
			else:
				var c = health.playerhealth - damage
				if(c < 0):
					health.playerhealth = 0
				else:
					health.playerhealth -= damage
			get_parent().queue_free()
			queue_free()
			
#This is not tested yet -Aaron###########
func unit_hit_by_attack(attack_damage):
	unit_health = clamp(unit_health - attack_damage,health_bar.min_value,health_bar.max_value)
	health_bar.value = unit_health
	if(unit_health <= 0):
		var reward : int #dragonfly
		if enemy == 0:
			reward = 1
		elif enemy == 1: #caterpillar
			reward = 2
		elif enemy == 2: #bee
			reward = 5
		elif enemy == 3: #Spider_Parent
			#code for spawning children
			for child_num in range(0,5):
				#more code
				pass
			var path_Instance = path.duplicate()
			path_Instance.progress = path.prog
			path_Instance.h_offset += randf_range(-2,2)
			path_Instance.v_offset += randf_range(-2,2)
		elif enemy == 4: #Spider_Child
			reward = 4
		var test_node = get_node("../../../../../Ui/Panel/Controller")
		test_node.money += reward
		get_parent().queue_free()
		queue_free()

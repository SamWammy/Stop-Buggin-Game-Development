extends CharacterBody2D

@onready var sprite = $AnimatedSprite2D
@onready var play : TextureButton
@export var speed : float
var path : PathFollow2D
var health : int = 10 


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == self.name :
		return
	if "Enemy" in body.name and body.has_method("unit_hit_by_attack"):
			body.unit_hit_by_attack(100)
			health-=100

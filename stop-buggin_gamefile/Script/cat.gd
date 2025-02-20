extends CharacterBody2D

@onready var sprite = $AnimatedSprite2D
@onready var play : TextureButton
@export var speed : float
var path : PathFollow2D
func _process(delta: float) -> void:
	if(path):
		var previous_position = get_parent().position
		path.progress -= speed * delta
		var diff = (previous_position.x- get_parent().position.x)
		var diffy = (get_parent().position.y - previous_position.y)
		var min_diff : float
		if Engine.time_scale == 1.0:
			min_diff = 0.1
		else:
			min_diff = 0.2
		if Globals.map_node.name== "Jungle_map":
			if sprite: #i think sometimes the bug would die/disapear and would cause a null pointer
				$AnimatedSprite2D.play("idle")
				sprite.scale.x = int(diff/abs(diff))
		else:
			if diff != 0 and abs(diff) > min_diff: 
				if sprite: #i think sometimes the bug would die/disapear and would cause a null pointer
					$AnimatedSprite2D.play("idle")
					sprite.scale.x = int(diff/abs(diff))
			if diffy > 0 and abs(diffy) > min_diff: 
				if sprite:
					$AnimatedSprite2D.play("Down")
					sprite.scale.y = int(diffy/abs(diffy))
			if diffy < 0 and abs(diffy) > min_diff: 
				if sprite:
					$AnimatedSprite2D.play("Up")
					#sprite.scale.y = int(diffy/abs(diffy))
				
		if(path.progress_ratio <= .01):
			get_parent().queue_free()
			queue_free()
	if !play.is_processing():
		get_parent().queue_free()
		queue_free()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == self.name :
		return
	if "Enemy" in body.name and body.has_method("unit_hit_by_attack"):
			body.unit_hit_by_attack(10)
			

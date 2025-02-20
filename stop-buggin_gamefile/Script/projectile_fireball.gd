extends CharacterBody2D


@export var damage : int
@export var speed = 800
var target: Node2D 
var color: Color = Color(1, 1, 1)

func _ready() -> void:
	var material = $AnimatedSprite2D.material
	if material:
		var new_material = material.duplicate()
		$AnimatedSprite2D.material = new_material
		new_material.set("shader_param/color_tint", color)

func _physics_process(delta):
	if target and target != null:
		var direction = global_position.direction_to(target.global_position)
		velocity = direction * speed
		look_at(target.global_position)
	else:
		queue_free()
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == self.name :
		return
	if "Enemy" in body.name and target == body:
		if body.has_method("unit_hit_by_attack"):
			body.unit_hit_by_attack(damage)
			queue_free()

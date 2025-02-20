extends CharacterBody2D

var button : TextureButton

var color : Vector3
var eyeColor : Vector3
var blendScale : float
var alpha : float #0-1
var cost : int
var def : int
var followCursor = false
enum targetingType { FIRST, LAST, STRONG, NEAR }
var targetType = targetingType.FIRST

func _ready() -> void:
	#connect("pressed",_input_event)
	blendScale = 0.75
	alpha = 1.0

func _process(delta: float) -> void:
	if(followCursor):
		alpha = 0.5
		global_position = get_global_mouse_position()
	
	# This could be moved to a function like update_scale that could be called from the spawn function
	# But will not be because we could do stuff like color changing or set towers easier.
	$LizardSprite.material.set_shader_parameter("inputColor", color)
	$LizardSprite.material.set_shader_parameter("eyeColor", eyeColor)
	$LizardSprite.material.set_shader_parameter("blendScale", blendScale)
	
	$LizardSprite.material.set_shader_parameter("alpha", alpha)
	
func update_scale(newScale : Vector2) -> void:
	$LizardSprite.scale = newScale
	$PlacementCollider.scale = newScale
	$InvalidPlacementSprite.scale = newScale * $InvalidPlacementSprite.scale.x

func _unhandled_input(event):
	if followCursor:
		if event is InputEventMouseButton:
			if event.button_index == 1 and event.pressed:
				var collision = move_and_collide(Vector2(0,0), true, .001)
				if collision != null:
					$InvalidPlacementSprite.play("bad")
					pass
				else:
					var radius = get_node("Lizard-Tower/CollisionShape2D/MeshInstance2D")
					radius.hide()
					var area= get_node("Lizard-Tower")
					if area:
						area.set_monitoring(true)
					print(global_position)
					$InvalidPlacementSprite.hide()
					followCursor = false
					alpha = 1.0
					button.count -= 1
					
		
func _input_event(viewport,event,shape_idx):
	var collision = move_and_collide(Vector2(0,0), true, .001)
	if event is InputEventMouseButton and event.button_index== MOUSE_BUTTON_LEFT and event.pressed and collision == null:
		var radius = get_node("Lizard-Tower/CollisionShape2D/MeshInstance2D")
		radius.show()
		var ui_bar= get_parent().get_parent().get_parent().get_parent().get_node("TowerClickUI")
		ui_bar.show_bar(self)
	
		
		

extends TextureButton
enum TowerType { S_LIZARD, M_LIZARD, L_LIZARD, STMS_LIZARD, DOUBLE_LIZARD }


@export var type : TowerType
@export var newScale = Vector2(1, 1)
@export var color = Vector3(0, 0, 1)
@export var eyeColor = Vector3(0, 1, 0)
@export var blendScale = 0.75
@export var cost = 0
@export var controller : Node2D


var lizard =  preload("res://Scenes/Tower-Lizard.tscn")
var count = 0 #makeshift lock

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	button_down.connect(_spawn_tower)
	$Label.text=str(cost)+"$"
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _spawn_tower() -> void:
	if count == 0 and controller.money >= cost:
		count += 1
		var lizardInstance = lizard.instantiate()
		if Globals.tower != null:
			var radius = Globals.tower.get_node("Lizard-Tower/CollisionShape2D/MeshInstance2D")
			radius.hide()
		add_child(lizardInstance)
		lizardInstance.button = $"."
		lizardInstance.set_z_index(4)
		lizardInstance.color = color
		lizardInstance.eyeColor = eyeColor
		lizardInstance.blendScale = blendScale
		lizardInstance.global_position = self.global_position
		lizardInstance.followCursor = true
		lizardInstance.update_scale(newScale)
		lizardInstance.input_pickable=true
		lizardInstance.cost=cost
		controller.money -= cost
		lizardInstance.def=0
		var area =lizardInstance.get_node("Lizard-Tower")
		if area:
			area.set_monitoring(false)
		print(global_position)
		

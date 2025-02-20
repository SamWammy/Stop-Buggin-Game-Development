extends TextureButton

@export var path : PathFollow2D
@export var fastForwardButton : TextureButton
@export var health : Node2D

var round = 1
var enemyCount : int
var fly = preload("res://Scenes/Enemy_DragonFly.tscn")
var caterpillar = preload("res://Scenes/Enemy_RedCaterpillar.tscn")
var bee = preload("res://Scenes/Enemy_Bee.tscn")

var waves
var current_wave=[]


func _ready() -> void:
	var cur = get_tree().get_current_scene().get_name()
	if cur == "StarterMapDemo":
		health.money = 150
	if cur == "RiverMapDemo":
		health.money = 200
	if cur == "SwirlMapDemo":
		health.money = 250
	if cur == "JungleMapDemo":
		health.money = 300
	set_process(false)
	self.connect("pressed", Play_Pressed)
	$Timer.timeout.connect(spawn_enemy)
	
func Play_Pressed():
	health.roundcounter+=1
	self.hide()
	fastForwardButton.show()
	start_round()
	
func start_round():
	current_wave=waves.pop_front()
	enemyCount = len(current_wave)
	spawn_enemy()

func spawn_enemy():
	#var enemy_Instance = fly.instantiate()
	var path_Instance = path.duplicate()
	path_Instance.progress = 0.0
	path_Instance.h_offset += randf_range(-2,2)
	path_Instance.v_offset += randf_range(-2,2)
	var enemy_Instance= current_wave.pop_front().instantiate()
	enemy_Instance.name = "Enemy_"
	#print("Spawned enemy: ", enemy_Instance.name)
	enemy_Instance.show()
	enemy_Instance.path = path_Instance
	enemy_Instance.set_z_index(4)
	enemy_Instance.fastForwardButton = fastForwardButton
	enemy_Instance.health = health
	
	var current_scene_name = get_tree().get_current_scene().get_name()
	if current_scene_name == "SwirlMapDemo":
		enemy_Instance.speed *= 3
		enemy_Instance.scale *= Vector2(4, 4)
		
	
	path_Instance.add_child(enemy_Instance)
	path.add_sibling(path_Instance)
	#print(enemy_Instance.get_parent())
		
		
	#print("Spawned enemy: ", enemy_Instance, " on path: ", path_Instance)

	set_process(true)
	enemyCount -= 1
	if(enemyCount > 0):
		$Timer.start()
		
func New_Round():
	health.money = health.money + 10
	var cur = get_tree().get_current_scene().get_name()
	LevelUnlock.unlock_level(cur,round)
	round+=1
	self.show()
	fastForwardButton.hide()
	
	
	
func _process(delta: float) -> void:
	var round_ended = true
	for child in path.get_parent().get_children():
		for unit in child.get_children():
			if unit.name == "Enemy_":
				round_ended = false
				pass
	if(enemyCount==0 and round_ended):
		set_process(false)
		New_Round()

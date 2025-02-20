extends Control

var cur_tower: CharacterBody2D

func show_bar(tower)->void:
	cur_tower=tower
	Globals.tower=tower
	visible=true
	_update_ui(cur_tower)

	# Set the margin to adjust the position, this will set the panel's distance from the bottom
	
func _update_ui(tower)->void:
	$TowerClickPanel/SellLabel.text= "Sell: " + str(tower.cost-(tower.cost*.20))
	
	$TowerClickPanel/TL_First.set_pressed(false)
	$TowerClickPanel/TL_Strong.set_pressed(false)
	$TowerClickPanel/TL_Last.set_pressed(false)
	
	#FIRST
	if Globals.tower.targetType == 0 and Globals.tower.def!=0:
		$TowerClickPanel/TL_First.set_pressed(true)
	#LAST
	if Globals.tower.targetType == 1 and Globals.tower.def!=0:
		$TowerClickPanel/TL_Last.set_pressed(true)
		
	if Globals.tower.targetType == 2 and Globals.tower.def!=0:
		$TowerClickPanel/TL_Strong.set_pressed(true)
	
func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.button_index== MOUSE_BUTTON_LEFT and event.pressed:
		#print(event.position)
		#print($TowerClickPanel.get_global_rect())
		#DO NOT CHANGE THE EVENT.POSITION/.9 VALUE THE .9 NEEDS TO BE THERE OR ITLL OFFSET THE CLICK
		if $TowerClickPanel.get_global_rect().has_point(event.position/.9):
			print("CLICKED INSIDE")
		else:
			hide()
			print("LCIKCED OUTSIDE")
			if cur_tower != null:
				var radius = cur_tower.get_node("Lizard-Tower/CollisionShape2D/MeshInstance2D")
				radius.hide()
			#var radius= cur_tower.get_node("Lizard-Tower/CollisionShape2D/MeshInstance2D")
			#radius.hide()

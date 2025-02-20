extends Area2D

enum TowerType { S_LIZARD, M_LIZARD, L_LIZARD, DOUBLE_LIZARD }
var targets = []
var fireball = preload("res://Scenes/Projectile_fireball.tscn")
enum targetingType { FIRST, LAST, STRONG, NEAR }

func _ready() -> void:
	var timer = $Timer
	if get_parent().get_parent().type == 2: #L_LIZARD
		timer.wait_time *= 2.3
	if get_parent().get_parent().type == 1 : #M_LIZARD
		timer.wait_time*= .8
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))
	timer.start()
	
func getNextTarget(targetType: targetingType) -> Node2D:
	if targetType == targetingType.FIRST:
		targets.sort_custom(sort_by_progress)
	elif targetType == targetingType.LAST:
		targets.sort_custom(sort_by_last)
	elif targetType == targetingType.STRONG:
		targets.sort_custom(sort_by_strongest)
	elif targetType == targetingType.NEAR:
		#TODO add the sorting based off closest distance
		pass
		
	return targets.front()

func _on_body_entered(body: Node2D) -> void:
	if "Enemy" in body.name:
		targets.append(body)

func _on_body_exited(body: Node2D) -> void:
	targets.erase(body)
		
func sort_by_progress(a, b):
	var initial_Progress = a.get_parent().get_progress_ratio()
	var comparing_Progress = b.get_parent().get_progress_ratio()
	return comparing_Progress < initial_Progress  
	
func sort_by_strongest(a, b):
	if a.enemy == b.enemy:
		return b.get_parent().get_progress_ratio() < a.get_parent().get_progress_ratio()
	else:
		return b.enemy < a.enemy
	
func _on_timer_timeout() -> void:
	if targets.size() > 0:
		var currentTarget = getNextTarget(get_parent().targetType)

		var tempfireball = fireball.instantiate()
		tempfireball.name = "Projectile"
		tempfireball.target = currentTarget
		if get_parent().get_parent().type == 0:  # "S_LIZARD" == 0
			tempfireball.damage = 5
		elif get_parent().get_parent().type == 1:  # "M_LIZARD" == 1
			tempfireball.damage = 8
			tempfireball.speed *=2
		elif get_parent().get_parent().type == 2:  # "L_LIZARD" == 2
			tempfireball.damage = 35
		elif get_parent().get_parent().type == 3:# "STMS_LIZARD" == 3
			var i = targets[0].unit_health
			var check = i-15
			tempfireball.target = targets[0]
			tempfireball.damage = 15
			if(check > 0):
				await get_tree().create_timer(0.25).timeout
				var tempfireball2 = fireball.instantiate()
				tempfireball2.name = "Projectile"
				if currentTarget in targets:
					tempfireball2.target = currentTarget
				else:
					return
				tempfireball2.damage = 15
				get_node("../fireball_location").add_child(tempfireball2)
				tempfireball2.global_position = get_parent().get_node("Marker2D").global_position  
		elif get_parent().get_parent().type == 4: #	DOUBLE LIZARD ==4 
			tempfireball.damage = 5 
			get_node("../fireball_location").add_child(tempfireball)
			tempfireball.global_position = get_parent().get_node("Marker2D").global_position
			if targets.size() > 1 :
				var Second_fireball = fireball.instantiate()
				Second_fireball.name = "Projectile"
				Second_fireball.target = targets[1]
				Second_fireball.damage = 5
				Second_fireball.color = Color(1,1,10)
				get_node("../fireball_location").add_child(Second_fireball)
				Second_fireball.global_position = get_parent().get_node("Marker2D").global_position
				return
		get_node("../fireball_location").add_child(tempfireball)
		tempfireball.global_position = get_parent().get_node("Marker2D").global_position  
		
			
func sort_by_last(a,b):
	var initial_Progress = a.get_parent().get_progress_ratio()
	var comparing_Progress = b.get_parent().get_progress_ratio()
	return comparing_Progress > initial_Progress  

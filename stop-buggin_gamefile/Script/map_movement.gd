extends PathFollow2D

@export var speed = 1

func _process(delta: float) -> void:
	var previous_position = position
	progress_ratio += speed*.001
	var diff = (position.x-previous_position.x)
	if diff != 0 and abs(diff) > .5: 
		scale.x = int(diff/abs(diff))
		
#On line 8, the abs(diff) > .5 is due to when the enemy turns a corner and slightly overshoots the path point causing it to move back slightly
#ie if the enemy is going directly right to a point at (28,0) and then goes to the point (28,-32) when it rounds the corner at point (28,0) it will reach somthing like 28.012... and then correct back to 28.
#This make it so that you cant just set the x change in direction to the scale

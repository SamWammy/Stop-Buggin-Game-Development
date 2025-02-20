extends CanvasLayer



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Globals.tut == 0:
		Globals.tut+=1
	else:
		get_parent().get_node("TutorialOnFirst").visible=false

# Called every frame. 'delta'$"." is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

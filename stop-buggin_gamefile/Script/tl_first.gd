extends TextureButton

enum targetingType { FIRST, LAST, STRONG, NEAR }

func _on_pressed() -> void:
	if pressed:
		set_pressed(true)
	Globals.tower.targetType = targetingType.FIRST
	Globals.tower.def+=1
	#Strong
	get_parent().get_node("TL_Strong").set_pressed(false)
	#Last
	get_parent().get_node("TL_Last").set_pressed(false)

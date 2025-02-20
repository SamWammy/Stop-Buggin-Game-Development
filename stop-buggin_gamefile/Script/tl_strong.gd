extends TextureButton

enum targetingType { FIRST, LAST, STRONG, NEAR }

func _on_pressed() -> void:
	if pressed:
		set_pressed(true)
	Globals.tower.targetType = targetingType.STRONG
	Globals.tower.def+=1
	#First
	get_parent().get_node("TL_First").set_pressed(false)
	#Last
	get_parent().get_node("TL_Last").set_pressed(false)

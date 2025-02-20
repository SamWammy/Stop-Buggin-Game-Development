extends TextureButton

var isFast = false

func _ready() -> void:
	self.hide()
	pass


func _on_toggled(toggled_on: bool) -> void:
	isFast = !isFast
	if(isFast):
		Engine.time_scale = 2.0
	else:
		Engine.time_scale = 1.0

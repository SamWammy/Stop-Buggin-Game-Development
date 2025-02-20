extends CanvasLayer
class_name UI


@onready var money_label = $Control/MarginContainer/VBoxContainer/Money

var money = 0:
	set(new_money):
		money = new_money
		_update_money_label()
	
func _ready():
	_update_money_label()
	
func _update_money_label():
	money_label.text = str(money)

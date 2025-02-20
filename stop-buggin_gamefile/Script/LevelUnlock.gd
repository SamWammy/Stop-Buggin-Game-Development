extends Node


@onready var LUPopup= preload("res://Scenes/LUPopup.tscn") as PackedScene

var levels= {
	"StarterMapDemo": true,
	"RiverMapDemo": false,
	"SwirlMapDemo": false,
	"JungleMapDemo": false
}

func is_level_unlocked(level_name:String)->bool:
	return levels.get(level_name,false)

func unlock_level(current_map: String, current_round:int, round_threshold: int=1):
	var next_map
	if current_map == "StarterMapDemo":
		next_map="RiverMapDemo"
	elif current_map == "RiverMapDemo":
		next_map="SwirlMapDemo"
	elif current_map == "SwirlMapDemo":
		next_map="JungleMapDemo"
	if levels[current_map] and current_round == round_threshold:
		if current_map != "JungleMapDemo":
			levels[next_map]= true
			get_tree().paused=true
			var PopUp=LUPopup.instantiate()
			add_sibling(PopUp)
			print("UNLOCKED NEXT MAP")

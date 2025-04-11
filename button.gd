extends Button

signal pressedLinha(data)

var data = []
var OptionButtona
var OptionButton2
var DataManager

func _ready() -> void:
	OptionButtona = get_node("../OptionButton")
	OptionButton2 = get_node("../OptionButton2")
	DataManager = get_node("../DataManager")


func _on_pressed() -> void:
	data = [OptionButtona.get_item_text(OptionButtona.selected), OptionButton2.get_item_text(OptionButton2.selected)]
	pressedLinha.emit(data)

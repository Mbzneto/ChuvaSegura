extends Button

signal pressedLinha(data)

var data = []
var OptionButtona
var OptionButton2

func _ready() -> void:
	OptionButtona = get_node("../OptionButton")
	OptionButton2 = get_node("../OptionButton2")


func _on_pressed() -> void:
	if OptionButtona.item_count > 0 and OptionButton2.item_count > 0:
		data = [OptionButtona.get_item_text(OptionButtona.selected), OptionButton2.get_item_text(OptionButton2.selected)]
		if data[0] != "" and data[1] != "":
			pressedLinha.emit(data)

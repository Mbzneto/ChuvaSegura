extends Node

func _ready() -> void:
	var Buttona = get_node("../Button")
	Buttona.pressedLinha.connect(_save_data)

func _save_data(data) -> void:
	for i in data:
		print("dado: " + i)

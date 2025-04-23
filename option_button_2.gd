extends OptionButton

@export var sData : StationData

func _on_option_button_selected_line(line: Variant) -> void:
	clear()
	for i in sData.stationData[line]:
		add_item(i)

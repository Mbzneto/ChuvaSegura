extends OptionButton

signal selectedLine(line)
@export var sData : StationData

func _on_data_manager_data_start(defaultData: Variant) -> void:
		for line in defaultData:
			add_item(line)

func _on_item_selected(index: int) -> void:
	selectedLine.emit(get_item_text(index))

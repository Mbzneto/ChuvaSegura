extends OptionButton

@export var sData : StationData

func _on_option_button_selected_line(line: Variant) -> void:
	clear()
	for i in sData.stationData[line]:
		add_item(i)

func _ready():
	var popup = self.get_popup()
	popup.max_size = Vector2(400, 200)
	self.clip_text = true

extends Sprite2D

func _on_button_button_down(color) -> void:
	modulate = Color(color)


func _on_button_button_up() -> void:
	modulate = Color(1, 1, 1)

extends Sprite2D


func _on_button_button_down() -> void:
	flip_v = true

func _on_button_button_up() -> void:
	flip_v = false

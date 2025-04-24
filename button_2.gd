extends Button

# Mudar p/ a tela de consulta

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://linhas.tscn")

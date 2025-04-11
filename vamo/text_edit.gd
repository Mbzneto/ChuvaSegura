extends TextEdit

var count = false

func _ready():
	pass


func _on_botao_pressed() -> void:
	if (count == false):
		self.text = ""
		count = true
	else:
		self.text = "Linhas"
		count = false

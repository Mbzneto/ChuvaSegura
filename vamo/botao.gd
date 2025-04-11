extends OptionButton

@onready var placeholder = $Placeholder
var aberto = false
var escolheu = false

func _on_item_selected(index: int) -> void:
	placeholder.text = ""
	escolheu = true

func _ready():
	self.add_item("Linha 2 - Verde")
	self.add_item("Linha 3 - Vermelha")
	self.add_item("Linha 4 - Amarela")
	self.add_item("Linha 5 - Lilás")
	self.add_item("Linha 7 - Rubi")
	self.add_item("Linha 8 - Diamante")
	self.add_item("Linha 9 - Esmeralda")
	self.add_item("Linha 10 - Turquesa")
	self.add_item("Linha 11 - Coral")
	self.add_item("Linha 12 - Safira")
	self.add_item("Linha 13 - Jade")
	self.add_item("Linha 15 - Prata")
	var popup = self.get_popup()
	popup.max_size = Vector2(400, 200)

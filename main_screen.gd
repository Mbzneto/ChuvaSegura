extends Node2D

func _ready():
	var theme = Theme.new()

	# Fonte
	var font = FontFile.new()
	font.font_data = load("res://fonts/Pacifico-Regular.ttf") # ou outra fonte que você baixou
	font.size = 24

	# Estilo dos OptionButtons
	var option_style = StyleBoxFlat.new()
	option_style.bg_color = Color("#F8F5F0")
	option_style.border_color = Color("#800080")
	option_style.border_width_all = 2
	option_style.corner_radius_all = 20

	# Estilo do botão "Reportar"
	var button_style = StyleBoxFlat.new()
	button_style.bg_color = Color("#B3D9F5")
	button_style.border_color = Color("#1A1A80")
	button_style.border_width_all = 2
	button_style.corner_radius_all = 30

	# Aplicando ao OptionButton
	theme.set_stylebox("normal", "OptionButton", option_style)
	theme.set_font("font", "OptionButton", font)
	theme.set_color("font_color", "OptionButton", Color("#333333"))

	# Aplicando ao Button
	theme.set_stylebox("normal", "Button", button_style)
	theme.set_font("font", "Button", font)
	theme.set_color("font_color", "Button", Color("#1A1A80"))

	# Aplicar nos nós reais
	$OptionButton.theme = theme
	$OptionButton2.theme = theme
	$Button.theme = theme

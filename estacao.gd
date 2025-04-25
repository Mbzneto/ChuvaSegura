extends Control

@export var colorRect : Panel
@export var label : Label

var state : int
var text : String

func setVars(colorState, stationText) -> void: 
	state = colorState
	text = stationText
	var style:StyleBoxFlat = StyleBoxFlat.new()
	style.corner_radius_bottom_left = 126
	style.corner_radius_bottom_right = 126
	style.corner_radius_top_left = 126
	style.corner_radius_top_right = 126
	#var color : Color
	
	if state < 5:
		print("GREEN")
		style.bg_color = Color.GREEN
		#color = Color.GREEN
	elif state < 15:
		print("YELLOW")
		style.bg_color = Color.YELLOW
		#color = Color.YELLOW
	else:
		print("RED")
		style.bg_color = Color.RED
		#color = Color.REDr.RED)
	colorRect.add_theme_stylebox_override ("panel", style)
	# colorRect.add_theme_color_override("panel", color)
	label.set_text(text)

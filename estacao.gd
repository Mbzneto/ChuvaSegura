extends Control

@export var colorRect : ColorRect
@export var label : Label

var state : int
var text : String

func setVars(colorState, stationText) -> void: 
	state = colorState
	text = stationText
	if state == 0:
		colorRect.set_color(Color.GREEN)
	elif state == 1:
		colorRect.set_color(Color.YELLOW)
	else:
		colorRect.set_color(Color.RED)
		
	label.set_text(text)

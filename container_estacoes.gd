extends VBoxContainer

@onready var estacao = preload("res://estacao.tscn")
@onready var linha = preload("res://linha.tscn")

var lastLine = ""
var sData

func _ready() -> void:
	sData = load("user://aaaa.tres")
	for line in sData.stationData:
		for station in sData.stationData[line]:
			if sData.stationData[line][station] > 0:
				if lastLine != line:
					var lineInstance = linha.instantiate()
					lineInstance.setLabel(line)
					add_child(lineInstance)
					lastLine = line
					pass
				var instance = estacao.instantiate()
				# instance.setVars(sData.stationData[line][station], "%s %s" % [line, station])
				instance.setVars(sData.stationData[line][station], station)
				add_child(instance)

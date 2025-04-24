extends VBoxContainer

@onready var estacao = preload("res://estacao.tscn")
@onready var linha = preload("res://linha.tscn")
var sData
var lastLine = ""

func _ready() -> void:
	sData = load("res://aaaa.tres")
	for line in sData.stationData:
		for station in sData.stationData[line]:
			if sData.stationData[line][station] > 0:
				if lastLine != line:
					var lineInstance = linha.instantiate()
					lineInstance.setLabel(line)
					add_child(lineInstance)
					lastLine = line
				var instance = estacao.instantiate()
				instance.setVars(sData.stationData[line][station], station)
				add_child(instance)

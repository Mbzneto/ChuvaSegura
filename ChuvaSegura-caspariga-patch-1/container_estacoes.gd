extends VBoxContainer

@onready var estacao = preload("res://estacao.tscn")
var sData

func _ready() -> void:
	sData = load("res://aaaa.tres")
	for line in sData.stationData:
		for station in sData.stationData[line]:
			print(sData.stationData[line][station])
			if sData.stationData[line][station] > 0:
				print("salve!")
				var instance = estacao.instantiate()
				instance.setVars(sData.stationData[line][station], "%s %s" % [line, station])
				add_child(instance)

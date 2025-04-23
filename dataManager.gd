extends Node

signal dataStart(defaultData)

@export var sData: StationData

var jsonData = {}

func _ready() -> void:
	var Buttona = get_node("../Button")
	Buttona.pressedLinha.connect(_save_data)
	jsonData = {"1":{"a":0, "b":0}, "2":{"a":0, "b":0}}
	dataStart.emit(sData.stationData)

func _save_data(data) -> void:
	
	# loop in item dictionary
	
	'''for line in sData.stationData:
		for station in sData.stationData[line]:
			var reportAmount = sData.stationData[line][station]
			print(reportAmount)'''
	sData.stationData[data[0]][data[1]] += 1
	print(sData.stationData[data[0]][data[1]])
	
	'''for line in jsonData:
		for station in jsonData[line]:
			var reportAmount = jsonData[line][station]
			print(reportAmount)'''
	
	# sData.stationData[data[0]][data[1]] += 1
	# print(sData.stationData[data[0]][data[1]])

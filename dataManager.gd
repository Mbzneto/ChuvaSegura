extends Node

signal dataStart(defaultData)

@export var sData: StationData

var userData: StationData
var jsonData = {}

func _ready() -> void:
	var Buttona = get_node("../Button")
	Buttona.pressedLinha.connect(_save_data)
	ResourceSaver.save(userData, "user://aaaa.tres")
	userData = StationData.new()
	# jsonData = {"1":{"a":0, "b":0}, "2":{"a":0, "b":0}}
	dataStart.emit(userData.stationData)

func _save_data(data) -> void:
	
	# loop in item dictionary
	
	
	# userData.report(data)
	userData.stationData[data[0]][data[1]] += 1
	ResourceSaver.save(userData, "user://aaaa.tres")
	#var userData2 = load("res://aaaa.tres")
	#for line in userData2.stationData:
		#for station in userData2.stationData[line]:
			#var reportAmount = userData2.stationData[line][station]
			#print(reportAmount)
	# print(userData.stationData[data[0]][data[1]])
	
	'''for line in jsonData:
		for station in jsonData[line]:
			var reportAmount = jsonData[line][station]
			print(reportAmount)'''
	
	# sData.stationData[data[0]][data[1]] += 1
	# print(sData.stationData[data[0]][data[1]])

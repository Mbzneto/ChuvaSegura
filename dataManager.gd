extends Node

signal dataStart(defaultData)

@export var sData: StationData

var jsonData = {}

func _ready() -> void:
	var Buttona = get_node("../Button")
	Buttona.pressedLinha.connect(_save_data)
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
<<<<<<< Updated upstream
	jsonData = {"1":{"a":0, "b":0}, "2":{"a":0, "b":0}}
	dataStart.emit(sData.stationData)
=======
	userData = StationData.new()
	dataStart.emit(userData.stationData)
>>>>>>> Stashed changes
=======
	userData = StationData.new()
	dataStart.emit(userData.stationData)
>>>>>>> Stashed changes
=======
	userData = StationData.new()
	dataStart.emit(userData.stationData)
>>>>>>> Stashed changes
=======
	userData = StationData.new()
	dataStart.emit(userData.stationData)
>>>>>>> Stashed changes

func _save_data(data) -> void:
	
	# loop in item dictionary
	
<<<<<<< Updated upstream
	'''for line in sData.stationData:
		for station in sData.stationData[line]:
			var reportAmount = sData.stationData[line][station]
			print(reportAmount)'''
	sData.stationData[data[0]][data[1]] += 1
	print(sData.stationData[data[0]][data[1]])
=======
	
	# userData.report(data)
	userData.stationData[data[0]][data[1]] += 1
	ResourceSaver.save(userData, "res://aaaa.tres")
	#var userData2 = load("res://aaaa.tres")
	#for line in userData2.stationData:
		#for station in userData2.stationData[line]:
			#var reportAmount = userData2.stationData[line][station]
			#print(reportAmount)
	# print(userData.stationData[data[0]][data[1]])
>>>>>>> Stashed changes
	
	'''for line in jsonData:
		for station in jsonData[line]:
			var reportAmount = jsonData[line][station]
			print(reportAmount)'''
	
	# sData.stationData[data[0]][data[1]] += 1
	# print(sData.stationData[data[0]][data[1]])

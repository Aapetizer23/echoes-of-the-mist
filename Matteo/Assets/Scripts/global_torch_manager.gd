extends Node

var total = 2
var torch_array: Array[bool]

signal torch_complete()

func _ready() -> void:
	torch_array.resize(total)

func torch_lit(i: int):
	torch_array[i] = true
	print(torch_array)
	print("Torch lit")
	
	for t in torch_array:
		if !t:
			return
	
	print("Complete")
	torch_complete.emit()

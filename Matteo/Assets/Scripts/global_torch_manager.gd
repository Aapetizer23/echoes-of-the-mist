extends Node

var total = 2
@onready var complete: bool = false
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
	
	complete = true
	get_tree().change_scene_to_file("res://node_2d.tscn")
	GlobalData.player = $"../Node2D/Game/Player"
	torch_complete.emit()

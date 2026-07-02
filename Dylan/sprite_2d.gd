extends Sprite2D

@onready var area_2d: Area2D = $Area2D




func _on_area_2d_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if area.name == "Hurtbox":
		GlobalData.extrasp = GlobalData.extrasp + 10
		print(GlobalData.extrasp)
		queue_free()

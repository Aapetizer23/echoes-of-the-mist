extends Node2D

@onready var area_2d: Area2D = $Sprite2D/Area2D
@onready var collision_shape_2d: CollisionShape2D = $Sprite2D/Area2D/CollisionShape2D



func _on_area_2d_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if area.name == "Hurtbox":
		GlobalData.keycollected = true
		print(GlobalData.keycollected)
		queue_free()

extends ProgressBar

@onready var label: Label = $"../Label"
@onready var progress_bar: ProgressBar = $"."
@onready var extra_stam: ProgressBar = $"../ExtraStam"


func _process(delta: float) -> void:
	var tween = get_tree().create_tween()
	if progress_bar.value <= 20:
		tween.tween_property(self, "value", GlobalData.sp, 0.2).set_trans(Tween.TRANS_BOUNCE)
	if progress_bar.value >= 20:
		tween.tween_property(extra_stam, "value", GlobalData.sp - 20, 0.2).set_trans(Tween.TRANS_BOUNCE)
	if GlobalData.sp >= 0:
		label.text = "SP: " + str(GlobalData.sp)
	if GlobalData.extrasp == 0:
		extra_stam.max_value = 1
	else:
		extra_stam.max_value = GlobalData.extrasp
	

func _on_sp_refill_timeout() -> void:
	if GlobalData.sp < 20 + GlobalData.extrasp:
		GlobalData.sp = GlobalData.sp + 1

extends Node

var curr_text = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	$UI/navigate.modulate = Color("00ffffff")
	$UI/accept.modulate = Color("00ffffff")
	$UI/back.modulate = Color("00ffffff")
	
	$Tween.interpolate_property($UI.get_child(curr_text), "modulate", null, Color("ffffff"), 0.5, Tween.TRANS_SINE, Tween.EASE_IN_OUT, 0.7)
	$Tween.start()
	
	$Tween.connect("tween_all_completed", self, "next_trans")
	pass # Replace with function body.


func next_trans():
	print(curr_text)
	curr_text += 1
	if curr_text >= 4:
		$Tween.disconnect("tween_all_completed", self, "next_trans")
		$Tween.connect("tween_all_completed", self, "transition")
		print("end")
	else:
		$Tween.interpolate_property($UI.get_child(curr_text), "modulate", null, Color("ffffff"), 0.5, Tween.TRANS_SINE, Tween.EASE_IN_OUT, 1.2)
	$Tween.interpolate_property($UI.get_child(curr_text-1), "modulate", null, Color("00ffffff"), 0.5, Tween.TRANS_SINE, Tween.EASE_IN_OUT, 1.2)
	$Tween.start()


func transition():
	get_tree().quit()
	

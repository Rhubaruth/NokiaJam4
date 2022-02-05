extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	set_size_pos()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func set_size_pos():
	#var window_size = Vector2(840, 480)
	#OS.set_window_size(window_size)
	
	var window_size = OS.get_real_window_size()
	var screen_size = OS.get_screen_size(0)
	OS.set_window_position(screen_size*0.5 - window_size*0.5)

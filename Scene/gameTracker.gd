extends Node

var time: float = 180
var minutes: int = 0
var seconds: int = 0
var msec: int = 0
var final_time = 0
# Called when the node enters the scene tree for the first time.
func reset():
	time = 0.0
	minutes = 0
	seconds = 0
	msec = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if time <- 0:
		get_tree().change_scene_to_file("res://Scene/gameover.tscn")

func finish():
	final_time = "%02d:%02d.%03d" % [minutes, seconds, msec]



	

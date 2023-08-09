extends Panel

var time: float = 0.0
var minutes: int = 0
var seconds: int = 0
var msec: int = 0


func _process(delta):
	time += delta
	msec = fmod(time, 1) * 100
	seconds = fmod(time, 60)
	minutes = fmod(time, 3600) / 60
	$minutes.text = "%02d:" % minutes
	$seconds.text = "%02d." % seconds
	$msecs.text = "%03d" % msec

func stop():
	set_process(false)

func get_time_formated():
	return "%02d:%02d.%03d" % [minutes, seconds, msec]

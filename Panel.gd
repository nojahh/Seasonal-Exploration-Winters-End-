extends Panel




func _process(delta):
	GameTracker.time += delta
	GameTracker.msec = fmod(GameTracker.time, 1) * 100
	GameTracker.seconds = fmod(GameTracker.time, 60)
	GameTracker.minutes = fmod(GameTracker.time, 3600) / 60
	$minutes.text = "%02d:" % GameTracker.minutes
	$seconds.text = "%02d." % GameTracker.seconds
	$msecs.text = "%03d" % GameTracker.msec

func stop():
	set_process(false)

func get_time_formated():
	return "%02d:%02d.%03d" % [GameTracker.minutes, GameTracker.seconds, GameTracker.msec]

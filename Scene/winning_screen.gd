extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer2/Label2.text = GameTracker.final_time


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_replay_adventure_pressed():
	get_tree().change_scene_to_file("res://Scene/title_screen.tscn")

func _on_leave_game_pressed():
	get_tree().quit()

extends Control



func _on_start_pressed():
	get_tree().change_scene_to_file("res://levels/level_1.tscn")



func _on_options_pressed():
	get_tree().change_scene_to_file("res://Scene/options_menu.tscn")


func _on_leave_pressed():
	get_tree().quit()

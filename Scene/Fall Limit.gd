extends Area2D

@export var starting_position = get_global_transform()

func _on_body_entered(body):
	if body.has_method("respawn"):
		body.respawn()

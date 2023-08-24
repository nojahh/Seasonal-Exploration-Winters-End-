extends Area2D

func _ready():
	$AnimationPlayer.play("Spike Trigger")

func _on_body_entered(body):
	if body.has_method("respawn"):
		body.respawn()


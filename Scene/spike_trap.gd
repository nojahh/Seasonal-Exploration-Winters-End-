extends Area2D

func _ready():
	$AnimationPlayer.play("Spike Trigger")

func _on_body_entered(body):
	if body.is_in_group("Player"):
		print("player dead")

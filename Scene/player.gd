extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -190.0
var direction = 0
@onready var starting_position = global_position

# Get the gravity from the project settings to be synced with RigidBody nodes.
@onready var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var animated_sprite = $AnimatedSprite2D


func _physics_process(delta):
	# Add the gravity.
	#if position.x > get_viewport().x:
		#pass
		#go to next level
	if not is_on_floor():
		velocity.y += gravity * delta
		animated_sprite.play("Jump")
	else:
		if(velocity.x == 0):
			animated_sprite.play("Idle")
		else:
			animated_sprite.play("Run")

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	update_facing_direction()
	
	
func update_facing_direction():
	if direction > 0:
		$AnimatedSprite2D.flip_h = false
	elif direction < 0:
		$AnimatedSprite2D.flip_h = true


func _on_door_body_entered(body):
	if body == self:
		get_tree().change_scene_to_file("res://levels/level_2.tscn")


func _on_door_2_body_entered(body):
	if body == self:
		get_tree().change_scene_to_file("res://levels/level_3.tscn")


func _on_door_3_body_entered(body):
	if body == self:
		get_tree().change_scene_to_file("res://levels/level_4.tscn")

func _on_door_4_body_entered(body):
	if body == self:
		GameTracker.finish()
		get_tree().change_scene_to_file("res://Scene/winning_screen.tscn")

func respawn():
	global_position = starting_position

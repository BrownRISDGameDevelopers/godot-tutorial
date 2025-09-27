extends CharacterBody2D

func _physics_process(delta):
	if is_on_floor():
		pass
	else:
		velocity.y += 15

	velocity.x = -300
	move_and_slide()

func die():
	queue_free()
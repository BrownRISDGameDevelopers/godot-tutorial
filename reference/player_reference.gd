extends CharacterBody2D

signal player_hit()

func _physics_process(delta):
	if is_on_floor():
		if Input.is_action_pressed("jump"):
			$PlayerAnimations.play("jump")
			velocity.y = -400
	else:
		velocity.y += 15

	if Input.is_action_pressed("move_right"):
		$PlayerAnimations.play("walk")
		velocity.x = 300
	elif Input.is_action_pressed("move_left"):
		$PlayerAnimations.play("walk")
		velocity.x = -300
	else:
		velocity.x = 0

	if velocity == Vector2.ZERO:
		$PlayerAnimations.play("idle")

	move_and_slide()


func _on_hitbox_body_entered(body: Node2D):
	if body.name.begins_with("Enemy"):
		if velocity.y > 0:
			body.die()
			velocity.y = -400
			Global.update_score()
		else:
			player_hit.emit()
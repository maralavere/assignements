extends CharacterBody2D

const SPEED = 100.0
const JUMP_VELOCITY = -300.0
const PUSH_FORCE = 1100

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if Input.is_action_just_pressed("big_kitty_jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY


	var direction := Input.get_axis("big_kitty_left", "big_kitty_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	for i in get_slide_collision_count():
		var c = get_slide_collision(i)
		if c.get_collider() is RigidBody2D:
			c.get_collider().apply_central_force(-c.get_normal() * PUSH_FORCE)

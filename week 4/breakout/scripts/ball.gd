extends CharacterBody2D

var speed = 400

func _ready():
	velocity = Vector2(-200, -200).normalized() * speed

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		velocity = velocity.bounce(collision.get_normal())
	
		if collision.get_collider().has_method("hit"):
			collision.get_collider().hit()

extends CharacterBody2D

@export var speed: int = 400
@export var gravity: int = 1200
@export var jump_speed: int = -400

var jumps_made: int = 0
@export var max_jumps: int = 2

func get_input():
	velocity.x = 0
	var is_crouching = Input.is_action_pressed("ui_down")
	
	if is_on_floor():
		jumps_made = 0
	
	if Input.is_action_just_pressed("jump") and not is_crouching:
		if jumps_made < max_jumps:
			velocity.y = jump_speed
			jumps_made += 1
	
	if is_crouching and is_on_floor():
		$CollisionShape2D.shape.size.y = 38.442
		$CollisionShape2D.position.y = 19.221
		$Sprite2D.scale.y = 0.25 # squash visually
		$Sprite2D.position.y = -12.5 # adjust to keep grounded
	else:
		$CollisionShape2D.shape.size.y = 76.884
		$CollisionShape2D.position.y = 0
		$Sprite2D.scale.y = 0.5
		$Sprite2D.position.y = -25

	if Input.is_action_pressed("right"):
		velocity.x += speed if not is_crouching else (speed * 0.5)
	if Input.is_action_pressed("left"):
		velocity.x -= speed if not is_crouching else (speed * 0.5)

func _physics_process(delta):
	velocity.y += delta * gravity
	get_input()
	move_and_slide()


func _process(_delta):
	if not is_on_floor():
		$Animator.play("Jump")
	elif velocity.x != 0:
		$Animator.play("Walk")
	else:
		$Animator.play("Idle")

	if velocity.x != 0:
		if velocity.x > 0:
			$Sprite2D.flip_h = false
		else:
			$Sprite2D.flip_h = true

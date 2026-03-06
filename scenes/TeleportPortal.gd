extends Area2D

func _on_body_entered(body):
	if body.name.begins_with("Player"):
		body.global_position = Vector2(68 * 128, -300)
		body.velocity.y = 0

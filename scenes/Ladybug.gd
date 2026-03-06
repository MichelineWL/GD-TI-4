extends Area2D

var speed = 150

func _process(delta):
	position.x -= speed * delta

func _on_body_entered(body):
	if body.name.begins_with("Player"):
		get_tree().change_scene_to_file("res://scenes/LoseScreen.tscn")

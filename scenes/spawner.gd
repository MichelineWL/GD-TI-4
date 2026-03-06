extends Node2D

@export var obstacle : PackedScene

@export var spawn_time: float = 5.0

func _ready():
	var dummy = get_node_or_null("DummyVisual")
	if dummy:
		dummy.hide()
	repeat()

func spawn():
	var spawned = obstacle.instantiate()
	get_parent().add_child(spawned)

	var spawn_pos = global_position
	spawn_pos.x = spawn_pos.x + randf_range(-1000, 1000)

	spawned.global_position = spawn_pos

func repeat():
	spawn()
	await get_tree().create_timer(spawn_time).timeout
	repeat()

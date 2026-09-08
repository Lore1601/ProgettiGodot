extends Node2D

@export var coin_scene: PackedScene

func _ready():
	for i in range(10):
		spawn_coin()

func spawn_coin():
	var coin = coin_scene.instantiate()

	coin.position = Vector2(
		randf_range(100, 1000),
		randf_range(100, 500)
	)

	add_child(coin)

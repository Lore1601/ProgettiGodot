extends CharacterBody2D

@export var speed = 200.0
var coins = 0

func _physics_process(_delta):
	var direction = Vector2(
		Input.get_axis("ui_left", "ui_right"),
		Input.get_axis("ui_up", "ui_down")
	).normalized()

	velocity = direction * speed
	move_and_slide()

func add_coin():
	coins += 1
	print("Monete: ", coins)

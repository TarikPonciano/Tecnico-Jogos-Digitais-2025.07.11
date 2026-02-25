extends Area2D

var velocity_x = 800
var velocity_y = 0

func _physics_process(delta: float) -> void:
	position.x += velocity_x * delta

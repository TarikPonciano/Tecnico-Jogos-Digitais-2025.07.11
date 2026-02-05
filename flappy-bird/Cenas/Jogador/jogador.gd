extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _physics_process(delta: float) -> void:
	# Código para ajustar a gravidade (queda do jogador)
	if not is_on_floor():
		velocity += get_gravity() * delta
		
	# Código para aumentar altitude (pulo do jogador)
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY

	# Movimentação horizontal constante
	velocity.x = SPEED

	move_and_slide()

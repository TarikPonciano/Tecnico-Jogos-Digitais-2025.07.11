extends Node2D

@onready var cena_cano = preload("res://Cenas/obstaculo.tscn")

func criar_cano():
	# Cria uma cópia do cano
	var novo_cano = cena_cano.instantiate()
	
	novo_cano.position.x = 1760 + (220 * Global.pontos)
	
	novo_cano.position.y = RandomNumberGenerator.new().randi_range(-100,100)
	
	add_child(novo_cano)
	
	
	

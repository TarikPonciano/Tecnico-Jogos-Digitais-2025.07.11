extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# Verificar se um corpo colidiu com a Zona de Morte. Depois verifica se é o jogador e apaga ele.
func _on_zona_morte_body_entered(body: Node2D) -> void:
	if body.name == "Jogador":
		# Apagar Jogador
		# body.queue_free()
		if Global.pontos > Global.maior_pontos:
			Global.maior_pontos = Global.pontos
		# Troca para a tela de morte
		get_tree().change_scene_to_file("res://Cenas/tela_de_morte.tscn")

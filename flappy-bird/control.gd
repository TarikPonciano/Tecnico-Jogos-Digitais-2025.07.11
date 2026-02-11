extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Panel/Label2.text = "Pontuação: " + str(Global.pontos)
	$Panel/Label3.text = "Maior Pontuação: " + str(Global.maior_pontos)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Global.pontos = 0
	get_tree().change_scene_to_file("res://Cenas/menu_inicial.tscn")

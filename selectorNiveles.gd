extends Control

func _ready():
	var contador: int = 0
	
	for botones in $GridContainer.get_children():
		if contador < Simpleton.nvl_actual:
			contador += 1
			botones.connect("pressed", self.cargar_nvl)
			botones.get_node("Label").text = botones.name
			botones.get_node("Label").modulate = "000000"
		else:
			botones.self_modulate = "000000"



func cargar_nvl(nombre):
	get_tree().change_scene("res://menu_inicial.tscn") 


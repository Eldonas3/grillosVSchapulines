extends Control
var sonidoBoton = preload("res://sonidos/click-button.mp3")

func _ready():
	var contador: int = 0
	
	for botones in $GridContainer.get_children():
		if contador < Simpleton.nvl_actual:
			contador += 1
			botones.get_node("Label").text = botones.name
			botones.get_node("Label").modulate = "000000"
		else:
			botones.self_modulate = "000000"


func _on_regresar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://menu_inicial.tscn")



func _on__pressed(nombre):
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://tarjetasBichos/fichaBicho"+nombre+".tscn")


extends Control
var sonidoBoton = preload("res://sonidos/click-button.mp3")
var sonidoBotonBloquedo = preload("res://sonidos/JDSherbert - Ultimate UI SFX Pack - Popup Close - 1.mp3")
var regresarB = TextureButton

func _ready():
	regresarB = $regresar
	regresarB.tooltip_text = "Ir al inicio"
	
	var contador: int = 0
	
	for botones in $GridContainer.get_children():
		if contador < Simpleton.nvl_actual:
			if 0 < len(Simpleton.nvls):
				botones.get_node("ColorRect/puntos").text = str(Simpleton.nvls[contador])
			else:
				botones.get_node("ColorRect/puntos").text = "Jugar"
			contador += 1
			botones.get_node("Label").text = botones.name
			botones.get_node("Label").modulate = "000000"
			botones.tooltip_text = "Ir al nivel " + str(contador)
		else:
			botones.modulate = "000000"
			botones.tooltip_text = "Nivel no desbloqueado"


func _on_regresar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://menu_inicial.tscn")



func _on__pressed(nombre):
	if int(nombre) < (Simpleton.nvl_actual +1):
		SonidoPresionarBotonMadera.stream = sonidoBoton
		SonidoPresionarBotonMadera.play()
		get_tree().change_scene_to_file("res://tarjetasBichos/fichaBicho"+nombre+".tscn")
	else:
		SonidoPresionarBotonMadera.stream = sonidoBotonBloquedo
		SonidoPresionarBotonMadera.play()


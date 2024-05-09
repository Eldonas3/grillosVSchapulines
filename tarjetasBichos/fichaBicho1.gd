extends Node2D

var sonidoBoton = preload("res://sonidos/click-button.mp3")
var sonidoAsombro = preload("res://sonidos/nuevaTarjeta.mp3")
var regresarB = TextureButton
var seguirB = TextureButton

func _ready():
	Win.stream = sonidoAsombro
	Win.play()
	regresarB = $regresar
	regresarB.tooltip_text = "Ir al selector de niveles"
	seguirB = $seguir
	seguirB.tooltip_text = "Ir al nivel"

func _on_regresar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")


func _on_seguir_pressed(nivel):
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	
	if 0 == Simpleton.primeraVez:
		Simpleton.nvl_juegando = int(nivel)
		Simpleton.primeraVez = 2
		get_tree().change_scene_to_file("res://contexto_juego.tscn")
	else:
		get_tree().change_scene_to_file("res://hotel_entomologico/nivel"+nivel+".tscn")



extends Node2D

var sonidoBoton = preload("res://sonidos/click-button.mp3")
var sonidoAsombro = preload("res://sonidos/nuevaTarjeta.mp3")

func _ready():
	Win.stream = sonidoAsombro
	Win.play()

func _on_regresar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")


func _on_seguir_pressed(nivel):
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://hotel_entomologico/nivel"+nivel+".tscn")

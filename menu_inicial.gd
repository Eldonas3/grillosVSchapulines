extends Node2D

var sonidoFondo = preload("res://sonidos/sonidoFondo.mp3")
var sonidoBoton = preload("res://sonidos/click-button.mp3")
var jugarB = TextureButton
var salirB = TextureButton

func _ready():
	SonidoFondo.stream = sonidoFondo
	SonidoFondo.play()
	jugarB = $jugar
	jugarB.tooltip_text = "Ir al selector de niveles"
	salirB = $salir
	salirB.tooltip_text = "Cerrar el juego"

func _on_jugar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")


func _on_salir_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().quit()


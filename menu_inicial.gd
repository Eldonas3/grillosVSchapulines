extends Node2D

var sonidoFondo = preload("res://sonidos/sonidoFondo.mp3")

func _ready():
	SonidoFondo.stream = sonidoFondo
	SonidoFondo.play()

func _on_jugar_pressed():
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")


func _on_salir_pressed():
	get_tree().quit()

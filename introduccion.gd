extends Node2D

var sonidoBoton = preload("res://sonidos/click-button.mp3")

func _ready():
	Simpleton.primeraVez = 0


func _on_seguir_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")

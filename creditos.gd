extends Node2D

var sonidoBoton = preload("res://sonidos/click-button.mp3")

func _on_regresar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://menu_inicial.tscn")

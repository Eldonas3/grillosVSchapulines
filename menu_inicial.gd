extends Node2D

var sonidoFondo = preload("res://sonidos/sonidoFondo.mp3")
var sonidoBoton = preload("res://sonidos/click-button.mp3")

func _ready():
	SonidoFondo.stream = sonidoFondo
	SonidoFondo.play()

func _on_jugar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")


func _on_salir_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().quit()

func _on_mouse_entered():
	var custom_cursor_texture = load("res://cursorSeleccionar.png")
	Input.set_custom_mouse_cursor(custom_cursor_texture, Input.CURSOR_ARROW)

func _on_mouse_exited():
	var custom_cursor_texture = load("res://cursor.png")
	Input.set_custom_mouse_cursor(custom_cursor_texture, Input.CURSOR_ARROW)

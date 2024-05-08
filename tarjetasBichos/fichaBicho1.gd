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
	

func _on_mouse_entered():
	var custom_cursor_texture = load("res://cursorSeleccionar.png")
	Input.set_custom_mouse_cursor(custom_cursor_texture, Input.CURSOR_ARROW)

func _on_mouse_exited():
	var custom_cursor_texture = load("res://cursor.png")
	Input.set_custom_mouse_cursor(custom_cursor_texture, Input.CURSOR_ARROW)


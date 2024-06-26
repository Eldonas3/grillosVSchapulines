extends Node2D

var counter_bichos_recolectados = 1
var counter_bichos_totales = Simpleton.nvl_actual + 6
var sonidoBoton = preload("res://sonidos/click-button.mp3")

func _ready():
	set_process(true)
	Simpleton.nvls.append(10)

func _process(delta):
	pass

func _on_area_grillo_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	counter_bichos_recolectados += 1
	$correcto.playing = true
	Simpleton.pts_acumulados = Simpleton.pts_acumulados + 100
	get_node("ColorRect/puntos").text = str(Simpleton.pts_acumulados) + " pts."
	if counter_bichos_recolectados > counter_bichos_totales:
		get_tree().change_scene_to_file("res://you_win.tscn")

func _on_area_hormiga_chicatana_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	counter_bichos_recolectados += 1
	$correcto.playing = true
	Simpleton.pts_acumulados = Simpleton.pts_acumulados + 100
	get_node("ColorRect/puntos").text = str(Simpleton.pts_acumulados) + " pts."
	if counter_bichos_recolectados > counter_bichos_totales:
		get_tree().change_scene_to_file("res://you_win.tscn")

func _on_area_chapulin_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	counter_bichos_recolectados += 1
	$correcto.playing = true
	Simpleton.pts_acumulados = Simpleton.pts_acumulados + 100
	get_node("ColorRect/puntos").text = str(Simpleton.pts_acumulados) + " pts."
	if counter_bichos_recolectados > counter_bichos_totales:
		get_tree().change_scene_to_file("res://you_win.tscn")


func _on_area_jumil_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	counter_bichos_recolectados += 1
	$correcto.playing = true
	if area.is_in_group("escarabajo"):
		Simpleton.pts_acumulados = Simpleton.pts_acumulados + 100
		get_node("ColorRect/puntos").text = str(Simpleton.pts_acumulados) + " pts."
	if counter_bichos_recolectados > counter_bichos_totales:
		get_tree().change_scene_to_file("res://you_win.tscn")

func _on_area_escarabajo_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	counter_bichos_recolectados += 1
	$correcto.playing = true
	if area.is_in_group("escarabajo"):
		Simpleton.pts_acumulados = Simpleton.pts_acumulados + 100
		get_node("ColorRect/puntos").text = str(Simpleton.pts_acumulados) + " pts."
	if counter_bichos_recolectados > counter_bichos_totales:
		get_tree().change_scene_to_file("res://you_win.tscn")


func _on_area_grillo_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	# Reactiva el proceso del área cuando el personaje sale
	area.set_process(true)

func _on_area_hormiga_chicatana_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	# Reactiva el proceso del área cuando el personaje sale
	area.set_process(true)

func _on_area_chapulin_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	# Reactiva el proceso del área cuando el personaje sale
	area.set_process(true)

func _on_area_jumil_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	# Reactiva el proceso del área cuando el personaje sale
	area.set_process(true)

func _on_area_escarabajo_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	# Reactiva el proceso del área cuando el personaje sale
	area.set_process(true)


func _on_regresar_pressed():
	SonidoPresionarBotonMadera.stream = sonidoBoton
	SonidoPresionarBotonMadera.play()
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")

func _on_mouse_entered():
	var custom_cursor_texture = load("res://cursorSeleccionar.png")
	Input.set_custom_mouse_cursor(custom_cursor_texture, Input.CURSOR_ARROW)

func _on_mouse_exited():
	var custom_cursor_texture = load("res://cursor.png")
	Input.set_custom_mouse_cursor(custom_cursor_texture, Input.CURSOR_ARROW)

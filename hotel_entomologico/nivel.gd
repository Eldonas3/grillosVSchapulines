extends Node2D

func _ready():
	set_process(true)

func _process(delta):
	pass

func _on_area_grillo_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("grillos"):
		$correcto.playing = true
		# Desactiva el proceso del área para detener el movimiento del personaje
		#area.set_process(false)
		#area.is_moving = false
	else:
		$incorrecto.playing = true

func _on_area_hormiga_chicatana_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("hormigas"):
		$correcto.playing = true
		# Desactiva el proceso del área para detener el movimiento del personaje
		area.set_process(false)		
		#area.is_moving = false
	else:
		$incorrecto.playing = true

func _on_area_chapulin_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("chapulines"):
		$correcto.playing = true
		# Desactiva el proceso del área para detener el movimiento del personaje
		#area.set_process(false)		
	else:
		$incorrecto.playing = true

func _on_area_jumil_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("jumiles"):
		$correcto.playing = true
		# Desactiva el proceso del área para detener el movimiento del personaje
		area.set_process(false)		
	else:
		$incorrecto.playing = true

func _on_area_escarabajo_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("escarabajos"):
		$correcto.playing = true
		# Desactiva el proceso del área para detener el movimiento del personaje
		area.set_process(false)		
	else:
		$incorrecto.playing = true


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

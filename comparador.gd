extends Node2D

func _ready():
	set_process(true)


func _process(delta):
	pass

func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("chapulines"):
		$correcto.playing = true
		print("Esta es un chapulin")
	else:
		$incorrecto.playing = true
		print("Esta no es un chapulin")


func _on_area_hormigas_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("hormigas"):
		$correcto.playing = true
		print("Esta es una hormiga")
	else:
		$incorrecto.playing = true
		print("Esta no es una hormiga")


func _on_area_chinches_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("grillos"):
		$correcto.playing = true
		print("Esta es un grillo")
	else:
		$incorrecto.playing = true
		print("Esta no es un grillo")


func _on_area_grillos_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("chinches"):
		$correcto.playing = true
		print("Esta es una chinche")
	else:
		$incorrecto.playing = true
		print("Esta no es una chinche")

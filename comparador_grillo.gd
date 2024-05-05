extends Node2D

func _ready():
	set_process(true)


func _process(delta):
	pass
	
func _on_area_2d_area_entered(area):
	pass # Replace with function body.


func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("hormigas"):
		print("Esto es una hormiga")
	else:
		print("Esto no es una hormiga")

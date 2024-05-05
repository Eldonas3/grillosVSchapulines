extends Node2D


func _on_regresar_pressed():
	Simpleton.nvl_actual = Simpleton.nvl_actual +1
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")

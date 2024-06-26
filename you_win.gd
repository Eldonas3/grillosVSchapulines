extends Node2D

var sonidoVictoria = preload("res://sonidos/win.mp3")
var jugarB = TextureButton

func _ready():
	Win.stream = sonidoVictoria
	Win.play()
	jugarB = $jugar
	jugarB.tooltip_text = "Ir al selector de niveles"

func _on_jugar_pressed():
	Simpleton.nvls[Simpleton.nvl_juegando-1] = Simpleton.pts_acumulados
	Simpleton.nvl_actual = Simpleton.nvl_actual +1
	Simpleton.pts_acumulados = 0
	get_tree().change_scene_to_file("res://selectorNiveles.tscn")

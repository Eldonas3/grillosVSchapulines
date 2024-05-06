extends Node2D

@onready var animation_intro = $AnimationPlayer

var sonidoFondo = preload("res://sonidos/sonidoIntro.mp3")

func _ready():
	SonidoFondo.stream = sonidoFondo
	SonidoFondo.play()
	animation_intro.play("load")
	get_tree().create_timer(3).timeout.connect(black_in)

func black_in():
	animation_intro.play("black_in")
	get_tree().create_timer(3).timeout.connect(black_out)

func black_out():
	animation_intro.play("black_out")
	get_tree().create_timer(3).timeout.connect(start_menu_scene)

func start_menu_scene():
	get_tree().change_scene_to_file("res://menu_inicial.tscn")

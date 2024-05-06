extends Node2D

var is_inside = false
var speed = 100  # Velocidad de movimiento en píxeles por segundo
var direction = 1  # Dirección del movimiento: 1 para derecha, -1 para izquierda
var initial_position = Vector2.ZERO  # Posición inicial del personaje
var is_moving = true  # Variable para controlar si el personaje está en movimiento

func _ready():
	set_process(true)
	initial_position = position  # Guarda la posición inicial del personaje al iniciar el juego
	
func _process(delta):
	if is_moving:
		# Movimiento automático horizontal
		var movement = speed * delta * direction
		position.x += movement
	
		# Cambio de dirección cuando se alcanzan los bordes de la pantalla
		if position.x > get_viewport_rect().size.x:
			direction = -1
		elif position.x < 0:
			direction = 1
	
	# Movimiento hacia la posición del ratón si está dentro del área
	if is_inside:
		self.global_position = get_viewport().get_mouse_position()

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("left_click"):
		is_inside = true
		initial_position = get_viewport().get_mouse_position()
	elif event.is_action_released("left_click"):
		is_inside = false
		# Cuando se suelta el botón del mouse, detén el movimiento del personaje
		#is_moving = false

		# Restaura la posición inicial
		position = initial_position


func _on_area_2d_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("grillos"):
		is_moving = false
		set_process(false)

extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	# Cargamos la escena que queremos instanciar

var scene_to_instance = preload("res://Scenes/ball.tscn")

# Este método detecta los eventos de entrada (clics, teclas, etc.)
func _input(event):
	# Verificamos si el evento es un clic del ratón
	if event is InputEventMouseButton and event.pressed:
		# Obtenemos la posición del ratón en coordenadas globales
		var local_mouse_position = to_local(get_global_mouse_position())
		##var click_position = get_global_mouse_position()

		# Instanciamos la escena
		var instance = scene_to_instance.instantiate()

		# Establecemos la posición de la instancia en el lugar del clic
		instance.position = local_mouse_position

		# Agregamos la instancia a la escena
		add_child(instance)

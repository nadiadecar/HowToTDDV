extends MarginContainer

@onready var correcto = $ItemList/correcto
@onready var correcto_2 = $ItemList/correcto2
@onready var correcto_3 = $ItemList/correcto3
@onready var correcto_4 = $ItemList/correcto4
@onready var incorrecto = $ItemList/incorrecto
@onready var incorrecto_2 = $ItemList/incorrecto2
@onready var siguiente = $ItemList/Siguiente
@onready var volver = $ItemList/Volver

@onready var niveles = $ItemList/Niveles

func _ready():
	siguiente.pressed.connect(_on_siguiente_pressed)
	volver.pressed.connect(_on_volver_pressed)
	niveles.pressed.connect(_on_niveles_pressed)

func _process(delta):
	if (correcto.button_pressed and correcto_2.button_pressed and correcto_3.button_pressed and correcto_4.button_pressed) and not (incorrecto.button_pressed or incorrecto_2.button_pressed):
		siguiente.visible = true
	else:
		siguiente.hide()

func _on_siguiente_pressed():
	get_tree().change_scene_to_file("res://Escenas/Devlogs/Devlog1/Devlog1_5.tscn")

func _on_volver_pressed():
	get_tree().change_scene_to_file("res://Escenas/Devlogs/Devlog1/Devlog1_3.tscn")

func _on_niveles_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Niveles.tscn")

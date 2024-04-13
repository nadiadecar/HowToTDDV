extends MarginContainer

@onready var correcto = $ItemList/correcto
@onready var correcto_2 = $ItemList/correcto2
@onready var correcto_3 = $ItemList/correcto3
@onready var correcto_4 = $ItemList/correcto4
@onready var incorrecto = $ItemList/incorrecto
@onready var incorrecto_2 = $ItemList/incorrecto2
@onready var siguiente = $ItemList/Siguiente

func _ready():
	siguiente.pressed.connect(_on_siguiente_pressed)

func _process(delta):
	if (correcto.button_pressed and correcto_2.button_pressed and correcto_3.button_pressed and correcto_4.button_pressed) and not (incorrecto.button_pressed or incorrecto_2.button_pressed):
		siguiente.visible = true
	else:
		siguiente.hide()

func _on_siguiente_pressed():
	get_tree().change_scene_to_file("res://Escenas/Devlogs/Devlog1/Devlog1_5.tscn")

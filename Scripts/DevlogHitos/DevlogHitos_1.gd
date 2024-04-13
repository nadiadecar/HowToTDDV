extends MarginContainer

@onready var incorrecto_1 = $ItemList/incorrecto1
@onready var incorrecto_2 = $ItemList/incorrecto2
@onready var correcto = $ItemList/correcto
@onready var incorrecto_3 = $ItemList/incorrecto3


# Called when the node enters the scene tree for the first time.
func _ready():
	incorrecto_1.pressed.connect( _on_incorrecto_pressed)
	incorrecto_2.pressed.connect( _on_incorrecto_pressed)
	incorrecto_3.pressed.connect( _on_incorrecto_pressed)
	correcto.pressed.connect( _on_correcto_pressed)

func _on_incorrecto_pressed():
	get_tree().change_scene_to_file("res://Escenas/Devlogs/DevlogHitos/DevlogHitos.tscn")

func _on_correcto_pressed():
	get_tree().change_scene_to_file("res://Escenas/Devlogs/DevlogHitos/DevlogHitos_2.tscn")

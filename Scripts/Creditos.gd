extends MarginContainer

@onready var volver = $ItemList/Volver

# Called when the node enters the scene tree for the first time.
func _ready():
	volver.pressed.connect(_on_volver_pressed)

func _on_volver_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/main_menu.tscn")

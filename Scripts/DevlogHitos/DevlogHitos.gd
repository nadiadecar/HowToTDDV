extends MarginContainer

@onready var siguiente = $ItemList/Siguiente

func _ready():
	siguiente.pressed.connect(_on_siguiente_pressed)


func _on_siguiente_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Devlogs/DevlogHitos/DevlogHitos_1.tscn")
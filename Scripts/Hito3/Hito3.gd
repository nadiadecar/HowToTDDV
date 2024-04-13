extends MarginContainer

@onready var siguiente = $ItemList/Siguiente

func _ready():
	siguiente.pressed.connect(_on_siguiente_pressed)


func _on_siguiente_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Hitos/Hito3/Hito3_2.tscn")

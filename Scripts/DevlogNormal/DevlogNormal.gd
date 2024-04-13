extends MarginContainer

@onready var siguiente = $ItemList/Siguiente

# Called when the node enters the scene tree for the first time.
func _ready():
	siguiente.pressed.connect(_on_siguiente_pressed)


func _on_siguiente_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Devlogs/DevlogNormal/DevlogNormal_1.tscn")

extends MarginContainer

@onready var siguiente = $ItemList/Siguiente
@onready var niveles = $ItemList/Niveles

func _ready():
	siguiente.pressed.connect(_on_siguiente_pressed)
	niveles.pressed.connect(_on_niveles_pressed)

func _on_siguiente_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Hitos/Hito3/Hito3_4.tscn")

func _on_niveles_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Niveles.tscn")

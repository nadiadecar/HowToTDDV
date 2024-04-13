extends MarginContainer


@onready var niveles = $ItemList/Niveles

# Called when the node enters the scene tree for the first time.
func _ready():
	niveles.pressed.connect(_on_niveles_pressed)


func _on_niveles_pressed():
	#Aquí hay que marcar que se completó el nivel
	Game.save_level("Devlog1")
	get_tree().change_scene_to_file("res://Escenas/Niveles.tscn")

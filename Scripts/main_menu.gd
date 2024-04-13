extends ItemList

@onready var creditos = %Creditos
@onready var salir = %Salir
@onready var niveles = %Niveles

func _ready():
	creditos.pressed.connect(_on_creditos_pressed)
	salir.pressed.connect(_on_salir_pressed)
	niveles.pressed.connect(_on_niveles_pressed)

func _on_niveles_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Niveles.tscn")

func _on_creditos_pressed():
	get_tree().change_scene_to_file("res://Escenas/Creditos.tscn")

func _on_salir_pressed():
	get_tree().quit()

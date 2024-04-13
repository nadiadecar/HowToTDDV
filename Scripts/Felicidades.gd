extends MarginContainer

@onready var button = $ItemList/Button

signal cerrar_felicidades

# Called when the node enters the scene tree for the first time.
func _ready():
	button.pressed.connect(_on_button_pressed)


func _on_button_pressed(): 
	cerrar_felicidades.emit()


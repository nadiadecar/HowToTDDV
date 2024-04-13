extends ItemList

@onready var devlog_1 = %Devlog1
@onready var devlog_normal = %DevlogNormal
@onready var devlog_hito = %DevlogHito
@onready var hito_2 = %Hito2
@onready var hito_1 = %Hito1
@onready var hito_3 = %Hito3
@onready var volver = %Volver
@onready var notas_devlogs = %NotasDevlogs

func _ready():
	devlog_1.pressed.connect(_on_devlog_1_pressed)
	devlog_normal.pressed.connect(_on_devlog_normal_pressed)
	devlog_hito.pressed.connect(_on_devlog_hito_pressed)
	hito_1.pressed.connect(_on_hito_1_pressed)
	hito_2.pressed.connect(_on_hito_2_pressed)
	hito_3.pressed.connect(_on_hito_3_pressed)
	notas_devlogs.pressed.connect(_on_notas_devlogs_pressed)
	volver.pressed.connect(_on_volver_pressed)
	
	var niveles_estados = Game.get_niveles_completados()
	
	if niveles_estados["Devlog1"]: 
		devlog_1.text += " ★"
	if niveles_estados["DevlogNormal"]: 
		devlog_normal.text += " ★"
	if niveles_estados["DevlogHito"]: 
		devlog_hito.text += " ★"
	if niveles_estados["Hito1"]: 
		hito_1.text += " ★"
	if niveles_estados["Hito2"]: 
		hito_2.text += " ★"
	if niveles_estados["Hito3"]: 
		hito_3.text += " ★"
	if niveles_estados["NotasDevlog"]: 
		notas_devlogs.text += " ★"


func _on_devlog_1_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Devlogs/Devlog1/Devlog1.tscn")

func _on_devlog_normal_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Devlogs/DevlogNormal/DevlogNormal.tscn")

func _on_devlog_hito_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Devlogs/DevlogHitos/DevlogHitos.tscn")

func _on_hito_1_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Hitos/Hito1.tscn")

func _on_hito_2_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Hitos/Hito2.tscn")

func _on_hito_3_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/Hitos/Hito3.tscn")

func _on_volver_pressed(): 
	get_tree().change_scene_to_file("res://Escenas/main_menu.tscn")

func _on_notas_devlogs_pressed():
	get_tree().change_scene_to_file("res://Escenas/Devlogs/NotasDevlogs/NotasDevlogs.tscn")

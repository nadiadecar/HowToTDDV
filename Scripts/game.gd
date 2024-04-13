extends Node

var niveles_completados = {
	"Devlog1": false,
	"DevlogNormal": false,
	"DevlogHito":false,
	"Hito1":false,
	"Hito2":false,
	"Hito3":false,
	"NotasDevlog": false
}

func save_level(nivel):
	niveles_completados[nivel] = true
	var data = JSON.stringify(niveles_completados)
	var file = FileAccess.open("user://niveles.json", FileAccess.WRITE)
	file.store_string(data)

func load_levels(): 
	var file = FileAccess.open("user://niveles.json", FileAccess.READ_WRITE)
	if (file): 
		var data = file.get_as_text()
		niveles_completados = JSON.parse_string(data)

func get_niveles_completados():
	return niveles_completados

func _ready():
	load_levels()
	print(niveles_completados)

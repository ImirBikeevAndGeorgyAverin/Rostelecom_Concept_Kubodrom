extends Node2D
var database: SQLite
func _ready():
	database = SQLite.new()
	database.path = "res://data.db"
	database.open_db()

	
	

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

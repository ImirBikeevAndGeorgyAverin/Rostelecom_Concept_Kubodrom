extends Node2D
var database : SQLite

# Called when the node enters the scene tree for the first time.
func _ready():
	database = SQLite.new()
	database.path = "res://data.db"
	database.open_db()
	
	
	
func _process(delta):
	pass


func _on_insert_data_pressed():
	var data = {
		"name" : $Name_edit.text,
		"score" : int($Score_edit.text),
		"proffesion" : $proffesion_edit.text
	}
	if $proffesion_edit.text == "Монтер":
		database.insert_row("monters", data)
	if $proffesion_edit.text == "Оператор":
		database.insert_row("operators", data)
	if $proffesion_edit.text == "Сисадмин":
		database.insert_row("sysadmins", data)


func _on_select_data_pressed():
	print(database.select_rows("players","score", ["score"]))


func _on_update_data_pressed():
	database.update_rows("players", "name = '" + $Name_edit.text + "'", {"score": int($Score_edit.text)})


func _on_delete_data_pressed():
	database.delete_rows("players", "name = '" + $Name_edit.text + "'")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_create_table_m_pressed():
		var table_monters = {
		"id" : {"data_type": "int" , "primary_key": true, "not_null" : true, "auto_increment" : true},
		"name" : {"data_type" : "text"},
		"score" : {"data_type" : "int"},
		"proffesion" : {"data_type" : "text"}
	}
		database.create_table("monters", table_monters)


func _on_create_table_s_pressed():
		var table_sysadmins = {
		"id" : {"data_type": "int" , "primary_key": true, "not_null" : true, "auto_increment" : true},
		"name" : {"data_type" : "text"},
		"score" : {"data_type" : "int"},
		"proffesion" : {"data_type" : "text"}
	}
		database.create_table("sysadmins", table_sysadmins)


func _on_create_table_o_pressed():
		var table_operators = {
		"id" : {"data_type": "int" , "primary_key": true, "not_null" : true, "auto_increment" : true},
		"name" : {"data_type" : "text"},
		"score" : {"data_type" : "int"},
		"proffesion" : {"data_type" : "text"}
	}
		database.create_table("operators", table_operators)

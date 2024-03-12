extends Node2D
var asas
var database: SQLite
# Called when the node enters the scene tree for the first time.
func _ready():
	database = SQLite.new()
	database.path = "res://data.db"
	database.open_db()
# Создаем список игроков
	var playersys = database.select_rows("sysadmins","score", ["score","name"])
	var playerm = database.select_rows("monters","score", ["score","name"])
	var players = database.select_rows("operators","score", ["score","name"])
	
	# Сортируем список игроков по убыванию очков
	playersys.sort_custom(compare_sys_players)
	playerm.sort_custom(compare_m_players)
	
	# Присваиваем каждому игроку порядковый номер
	for i in range(playersys.size()):
		playersys[i]["position"] = i + 1
	var sys = ""
	# Выводим результат
	for player in playersys:
		sys+= ("" +  str(player["name"]) +"              " + str(player["score"])   + "           " + str(player["position"]) + "\n\n")
	$Sysadmins/sys_label.text = sys
	print(sys)
	

	# Сортируем список игроков по убыванию очков
	

	# Присваиваем каждому игроку порядковый номер
	for m in range(playerm.size()):
		playerm[m]["position"] = m + 1
	var m = ""
	# Выводим результат
	for player in playerm:
		m+= ("" +  str(player["name"]) +"              " + str(player["score"])   + "           " + str(player["position"]) + "\n\n")
	$Monters/Monters_label.text = m
	print(sys)
	

	# Сортируем список игроков по убыванию очков
	

	# Присваиваем каждому игроку порядковый номер
	for i in range(players.size()):
		players[i]["position"] = i + 1
	var oper = ""
	# Выводим результат
	for player in players:
		oper += ("" +  str(player["name"]) +"             " + str(player["score"])   + "           " + str(player["position"]) + "\n\n")
	$Oparators/name_one_operators.text = oper
	# Функция для сравнения игроков по очкам
func compare_players(a, b):
	return b["score"] - a["score"]
	
	# Функция для сравнения игроков по очкам
func compare_sys_players(y, s):
	return s["score"] - y["score"]
func compare_m_players(o, m):
	return m["score"] - o["score"]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

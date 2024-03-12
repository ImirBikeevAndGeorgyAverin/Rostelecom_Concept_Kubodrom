extends Node2D
var database: SQLite
func _ready():
	database = SQLite.new()
	database.path = "res://data.db"
	database.open_db()

	
	var modified_name_m_string = str(database.select_rows("monters","score", ["name"])).substr(11, str(database.select_rows("monters","score", ["name"])).length())
	var modified_score_m_text = str(database.select_rows("monters","score", ["score"])).substr(11, str(database.select_rows("monters","score", ["score"])).length())
	var name_str_result = modified_name_m_string
	var score_str_result = modified_score_m_text
	var unwanted_chars = ["}","]" ] #and so on

	for c in unwanted_chars:
		name_str_result = name_str_result.replace(c,"")
		score_str_result = score_str_result.replace(c,"")
		print(name_str_result)
	$ScrollContainer/VBoxContainer/Monters/name_one_monters.text = "        " + name_str_result
	$ScrollContainer/VBoxContainer/Monters/score_one_monters.text = "     " + score_str_result

	var modified_o_name_string = str(database.select_rows("operators","score", ["name"])).substr(11, str(database.select_rows("operators","score", ["name"])).length())
	var modified_o_score_text = str(database.select_rows("operators","score", ["score"])).substr(11, str(database.select_rows("operators","score", ["score"])).length())
	var name_o_str_result = modified_o_name_string
	var score_o_str_result = modified_o_score_text
	var unwanted_o_chars = ["}","]" ] #and so on

	for i in unwanted_o_chars:
		name_o_str_result = name_o_str_result.replace(i,"")
		score_o_str_result = score_o_str_result.replace(i,"")
		print(name_str_result)
	$ScrollContainer/VBoxContainer/Oparators/name_one_operators.text = "        " + name_o_str_result
	$ScrollContainer/VBoxContainer/Oparators/score_one_operators.text = "     " + score_o_str_result

	var modified_s_name_string = str(database.select_rows("sysadmins","score", ["name"])).substr(11, str(database.select_rows("sysadmins","score", ["name"])).length())
	var modified_s_score_text = str(database.select_rows("sysadmins","score", ["score"])).substr(11, str(database.select_rows("sysadmins","score", ["score"])).length())
	var name_s_str_result = modified_s_name_string
	var score_s_str_result = modified_s_score_text
	var unwanted_s_chars = ["}","]" ] #and so on

	for s in unwanted_s_chars:
		name_s_str_result = name_s_str_result.replace(s,"")
		score_s_str_result = score_s_str_result.replace(s,"")
		print(name_str_result)
	$ScrollContainer/VBoxContainer/Sysadmins/name_one_sysadmins.text = "        " + name_s_str_result
	$ScrollContainer/VBoxContainer/Sysadmins/score_one_sysadmins.text = "     " + score_s_str_result




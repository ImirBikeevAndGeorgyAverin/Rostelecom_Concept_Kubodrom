extends Node2D
# Singleton.gd



func _ready():
	pass



func _on_sysa_btn_pressed():
	Main.sys = 1
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
	

func _on_oper_btn_pressed():
	Main.sys = 2
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_monter_btn_pressed():
	Main.sys = 3
	get_tree().change_scene_to_file("res://Scenes/main.tscn")

extends Node2D
var sys
func _ready():
	if Main.sys == 1:
		print("Вы вошли как системный администратор")
	elif Main.sys == 2:
		print("Вы вошли как оператор")
	elif Main.sys == 3:
		print("Вы вошли как Монтер")





func _on_raiting_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/raiting.tscn")

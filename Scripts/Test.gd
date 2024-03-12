extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_go_to_play_pressed():
	if Main.sys == 1:
		print("Вы вошли как системный администратор")
	elif Main.sys == 2:
		print("Вы вошли как оператор")
	elif Main.sys == 3:
		get_tree().change_scene_to_file("res://Scenes/mian_2d.tscn")

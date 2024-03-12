extends Node2D

var q_1 = 0
var q_2 = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ans_6_pressed():
	q_1 = 1

func _on_ans_pressed():
	q_2 = 1
	print(q_2+q_1)

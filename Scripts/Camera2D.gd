extends Camera2D

var length = 50
var start_pos: Vector2
var current_pos: Vector2
var swiping = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("swipe"):
		if swiping:
			swiping = true
			start_pos = get_global_mouse_position()
			print("Start Position: ", start_pos)
	if Input.is_action_just_pressed("swipe"):
		if swiping:
			current_pos = get_global_mouse_position()
			if start_pos.direction_to(current_pos) >= length:
				print("Yes")
				swiping = false

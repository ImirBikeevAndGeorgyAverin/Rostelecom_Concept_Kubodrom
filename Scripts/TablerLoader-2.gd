extends Sprite2D



		
# Called when the node enters the scene tree for the first time.
func _ready():
	for iteration in 600:
		await get_tree().create_timer(0.001).timeout
		rotation_degrees = +iteration
		if (iteration) == 599:
			get_tree().change_scene_to_file("res://Scenes/main.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

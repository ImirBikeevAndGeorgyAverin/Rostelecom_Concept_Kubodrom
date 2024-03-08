extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var robot = $IconRobot
	var hi_text = $"Привет,ЯCoDroid!"
	var what_can_help = $"ЧемТебеПомочь"
	var wh_can_help_group = $what_can_help
	wh_can_help_group.modulate.a8 = 0
	what_can_help.modulate.a8 = 0
	hi_text.modulate.a8 = 0
	robot.scale.x = 0.6
	robot.scale.y = 0.6
	robot.position.x = -168
	for iteration in 300:
			await get_tree().create_timer(0.00001).timeout
			robot.position.x = (-168)+(iteration)
	for iterations in 300:
			await get_tree().create_timer(0.00001).timeout
			hi_text.modulate.a8 = +iterations
	for iterations in 300:
			await get_tree().create_timer(0.00001).timeout
			what_can_help.modulate.a8 = +iterations
	for iterations in 300:
			await get_tree().create_timer(0.00001).timeout
			wh_can_help_group.modulate.a8 = +iterations

	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

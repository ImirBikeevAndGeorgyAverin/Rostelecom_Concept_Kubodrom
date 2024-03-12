extends Node2D
var database : SQLite

var random_advise = {
		"1" : "Планируй свою работу заранее и составляй список задач на каждый день.",
		"2" : "Устанавливай приоритеты и начинай с самых важных и сложных задач.",
		"3" : "Избегай отвлекающих факторов, таких как социальные сети и посторонние разговоры.",
		"4" : "Поддерживай связь с коллегами и коммуницируй эффективно.",
		"5" : "Периодически делай перерывы, чтобы отдохнуть и снова сконцентрироваться.",
		"6" : "Обучайся новым навыкам и развивай свои профессиональные качества.",
		"7" : "Управляй своим временем эффективно, ставь себе жесткие сроки и придерживайся их.",
		"8" : "Старайся выполнять задачи качественно и точно, избегай поверхностности.",
		"9" : "Задавай вопросы, если что-то не понятно, и не стесняйся просить помощи у коллег.",
		"10" : "Поддерживай позитивное настроение и не забывай о здоровом образе жизни, чтобы быть более продуктивным."
	}




# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	$AdvisePopup.modulate.a8 = 0
	var robot = $IconRobot
	var hi_text = $"Привет,ЯCoDroid!"
	var what_can_help = $"ЧемТебеПомочь"
	var wh_can_help_group = $what_can_help
	var rating_group = $raiting_group
	rating_group.position.x = 255
	wh_can_help_group.modulate.a8 = 0
	what_can_help.modulate.a8 = 0
	hi_text.modulate.a8 = 0
	robot.scale.x = 0.6
	robot.scale.y = 0.6
	robot.position.x = -168
	$Advice.modulate.a8 = 0
	
	
	for iteration in 300:
			await get_tree().create_timer(0.0018).timeout
			robot.position.x = (-168)+(iteration)
			
	for iterations in 300:
			await get_tree().create_timer(0.0018).timeout
			hi_text.modulate.a8 = +iterations
	for iterations in 300:
			await get_tree().create_timer(0.0018).timeout
			what_can_help.modulate.a8 = +iterations
	for iterations in 300:
			await get_tree().create_timer(0.0018).timeout
			wh_can_help_group.modulate.a8 = +iterations
	for iterations in 300:
			await get_tree().create_timer(0.0018).timeout
			$Advice.modulate.a8 = +iterations
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_advice_btn_pressed():
	for iterations in 300:
			var size = random_advise.size()
			var random_key = random_advise.keys()[randi() % size]
			var amount = random_advise[random_key]
			$Advice/Advice_btn/Label.text = amount
			$Advice/Advice_btn/Label.modulate = Color(0,0,0,1)
			await get_tree().create_timer(0.0018).timeout
			$AdvisePopup.modulate.a8 = +iterations

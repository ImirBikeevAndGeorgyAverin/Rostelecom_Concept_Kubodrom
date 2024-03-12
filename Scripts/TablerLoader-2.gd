extends Sprite2D



		
# Called when the node enters the scene tree for the first time.
func _ready():
	for iteration in 600:
		await get_tree().create_timer(0.001).timeout
		rotation_degrees = +iteration
	for iterations in 1:
			await get_tree().create_timer(0.018).timeout
			$".".scale.x = 0.7
			await get_tree().create_timer(0.018).timeout
			$".".scale.x = 0.5
			await get_tree().create_timer(0.018).timeout
			$".".scale.x = 0.3
			await get_tree().create_timer(0.018).timeout
			$".".scale.x = 0
	
	for iterations in 50:
		await get_tree().create_timer(0.018).timeout
		$"../КомпасУспехаВРостелекоме".position.y = $"../КомпасУспехаВРостелекоме".position.y-iterations
	for iterationsp in 25:
		await get_tree().create_timer(0.018).timeout
		$"../ВыберитеПрофессию".position.y =  $"../ВыберитеПрофессию".position.y+iterationsp
	for iterationsi in 30:
			await get_tree().create_timer(0.0018).timeout
			$"../sysa".position.x = $"../sysa".position.x -iterationsi
	for iterationsi in 9:
			await get_tree().create_timer(0.0018).timeout
			$"../sysa".position.x = $"../sysa".position.x -iterationsi
	for iterationsi in 3:
			await get_tree().create_timer(0.0018).timeout
			$"../sysa".position.x = $"../sysa".position.x -iterationsi
			
	for iterationsis in 30:
			await get_tree().create_timer(0.0018).timeout
			$"../oper".position.x = $"../oper".position.x +iterationsis
	for iterationsis in 1:
			await get_tree().create_timer(0.0018).timeout
			$"../oper".position.x =$"../oper".position.x +iterationsis
	for iterationsis in 3:
			await get_tree().create_timer(0.0018).timeout
			$"../oper".position.x =$"../oper".position.x +iterationsis
			
	for iterationsir in 30:
			await get_tree().create_timer(0.0018).timeout
			$"../monter".position.x =$"../monter".position.x -iterationsir
	for iterationsir in 9:
			await get_tree().create_timer(0.0018).timeout
			$"../monter".position.x = $"../monter".position.x -iterationsir
	for iterationsir in 3:
			await get_tree().create_timer(0.0018).timeout
			$"../monter".position.x = $"../monter".position.x -iterationsir
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

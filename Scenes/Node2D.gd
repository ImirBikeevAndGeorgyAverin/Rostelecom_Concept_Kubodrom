extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Main.sys == 1:
		$"../Sysadmins".position.x = 209
		$"../Sysadmins".position.y = 494
		$"../Oparators".position.x = -209
		$"../Oparators".position.y = -494
		$"../Monters".position.x = -209
		$"../Monters".position.y = -494
	elif Main.sys == 2:
		$"../Sysadmins".position.x = -209
		$"../Sysadmins".position.y = -494
		$"../Oparators".position.x = 209
		$"../Oparators".position.y = 494
		$"../Monters".position.x = -209
		$"../Monters".position.y = -494
	elif Main.sys == 3:
		$"../Sysadmins".position.x = -209
		$"../Sysadmins".position.y = -494
		$"../Oparators".position.x = -209
		$"../Oparators".position.y = -494
		$"../Monters".position.x = 209
		$"../Monters".position.y = 494


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

extends SpotLight

func _ready():
	reset()
	
func goal_scored(player):
	var Player1 = get_tree().get_root().find_node("Player1", true, false)
	var Player2 = get_tree().get_root().find_node("Player2", true, false)
	var target
	
	if player == 1:
		target = Player1.translation
	else:
		target = Player2.translation
	look_at(target, Vector3(0,1,0))
	show()
	
func reset():
	hide()

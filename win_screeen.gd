extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$CoinStats.text = "Coins: " + str(GameTimer.coins)
	$TimeStats.text = "Time: " + GameTimer.high_score_timer


func _on_next_level_pressed():
	print("next level here")


func _on_level_selection_pressed():
	get_tree().change_scene_to_file("res://level_select_1.tscn")


func _on_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_quit_pressed():
	get_tree().quit()

extends Control

var game_timer = preload("res://GameTimer.gd")

# Retrieve the saved time value
'var saved_time = game_timer.saved_time'


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_go_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")
	'print(saved_time)'


func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://world_3.tscn")


func _on_quit_pressed():
	get_tree().quit()

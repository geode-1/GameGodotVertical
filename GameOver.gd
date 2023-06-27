extends Control

var timer = "res://game_ui.tscn"
var player = "res://Player.tscn"
var time_final


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_go_menu_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")


func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://world_3.tscn")


func _on_quit_pressed():
	get_tree().quit()
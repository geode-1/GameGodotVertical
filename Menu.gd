extends Control

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_play_pressed():
	get_tree().change_scene_to_file("res://world_3.tscn")
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	


func _on_quit_pressed():
	get_tree().quit()


func _on_other_prototypes_pressed():
	get_tree().change_scene_to_file("res://options.tscn")

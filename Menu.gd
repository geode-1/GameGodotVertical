extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://world_3.tscn")
	


func _on_quit_pressed():
	get_tree().quit()


func _on_other_prototypes_pressed():
	get_tree().change_scene_to_file("res://options.tscn")

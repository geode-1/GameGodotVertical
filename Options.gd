extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_world_1_pressed():
	get_tree().change_scene_to_file("res://world.tscn")


func _on_world_2_pressed():
	get_tree().change_scene_to_file("res://world_2.tscn")


func _on_world_3_pressed():
	get_tree().change_scene_to_file("res://world_3.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu.tscn")

extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	get_tree().change_scene_to_file("res://win_screeen.tscn")
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

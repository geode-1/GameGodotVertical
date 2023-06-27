extends Node3D


@export var platform_object = preload("res://move_platform.tscn")



# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func spawn_platform():
	var object = platform_object.instantiate()
	add_child(object)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	spawn_platform()



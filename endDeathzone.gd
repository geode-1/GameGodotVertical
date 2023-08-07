extends Area3D

@export var move_death_area = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if move_death_area == true:
		$AnimationPlayer.play("death_area_move")
		
	

extends CharacterBody3D


enum {IDLE, MOVE, CHASE, STUNED}
var state = IDLE
var player = "res://Player.tscn"
@export var SPEED = 3
var direction 



func _ready():
	pass
	
	

func _process(delta):
	
	if $RayCast3D.is_colliding():
		state = CHASE
		print("look")
	
	
	match state:
		IDLE:
			pass
		MOVE:
			pass
		CHASE:
			velocity.x = SPEED
		STUNED:
			pass
		
		
		
		
func chase():
	pass

	

	

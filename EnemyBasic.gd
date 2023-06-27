extends CharacterBody3D



















'
@onready var nav_agent = $NavigationAgent3Dnew

var SPEED = 3.0

func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_position()
	var new_volocity = (next_location - current_location).normalized() * SPEED
	
	nav_agent.set_velocity(new_volocity)
	
func update_target_location(target_location):
	nav_agent.set_target_position(target_location)







func _on_navigation_agent_3d_target_reached():
	print("in range")
	
	



func _on_navigation_agent_3d_velocity_computed(safe_velocity):
	velocity = velocity.move_toward(safe_velocity, .25)
	move_and_slide()
'

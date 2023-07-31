extends CharacterBody3D


enum {GROUND = 1, AIR, CLIMB}
@export var default_speed = 10
var jump_velocity = 6.5
@export var sprint_speed = 15.0
var speed = default_speed
var climb_speed = 5.0
var gravity_changed = false
var dead = false
var coin_counter = 0
signal coin

var still_on_wall = false
@onready var wall_raycasts = $wall_raycasts
@onready var wall_check = $wall_raycasts/wall_check
@onready var still_on_wall_check = $wall_raycasts/still_on_wall_check
var climbing = false

var total_jumps = 0
var normal_gravity = ProjectSettings.get_setting("physics/3d/default_gravity")
var gravity_enabled = true
var player = "res://Player.tscn"


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = normal_gravity


@onready var CameraBase = $CameraBase


func _ready():
	pass



func _input(event):
	if event is InputEventMouseMotion:
		CameraBase.rotation.x -= deg_to_rad(event.relative.y * 1) 
		CameraBase.rotation.x = clamp(CameraBase.rotation.x, deg_to_rad(-90), deg_to_rad(30))
		rotation.y -= deg_to_rad(event.relative.x * 1)




func damage():
	pass

func death():
	get_tree().change_scene_to_file("res://game_over.tscn")
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	dead = true

func _physics_process(delta):

		#Gravity 
	if not is_on_floor():
		velocity.y -= gravity * delta


		# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_velocity
		total_jumps = 1
	
		
		
		#double jump 
	if Input.is_action_just_pressed("jump") and not is_on_floor() and total_jumps == 1:
		velocity.y = jump_velocity
		total_jumps = 2

	
		

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("move_left", "move_right", "move_foward", "move_backward")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()

	if direction:
		velocity.x = direction.x * speed
		velocity.z = direction.z * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		velocity.z = move_toward(velocity.z, 0, speed)


	#Sprint
	if Input.is_action_pressed("move_sprint"):
		speed = sprint_speed
	else:
		speed = default_speed
	
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene_to_file("res://menu.tscn")
		
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()
		
		'
	if Input.is_action_just_pressed("change_aspect"):
		if gravity == normal_gravity:
			gravity = 9
			speed = 5
			jump_velocity = 9
		else:
			gravity = normal_gravity
			speed = default_speed
			jump_velocity = 13.0'


	#climbing
	if $wall_raycasts/wall_check.is_colliding() and not is_on_floor():

		gravity_enabled = false
		velocity.y = 0
		print("wallColide")

		if Input.is_action_pressed("move_foward"):
		# Calculate the movement vector
			var movement = Vector3(direction.x, 0, direction.z).normalized() * climb_speed
			velocity.x = movement.x
			velocity.z = movement.z
			velocity.y = climb_speed
			climbing = true
			


		elif Input.is_action_pressed("move_backward"):
			var movement = Vector3(direction.x, 0, direction.z).normalized() * climb_speed
			velocity.x = movement.x
			velocity.z = movement.z
			velocity.y = -climb_speed
			climbing = true
			
			
	
			
		else:
		# Reset the vertical (Y) velocity to prevent automatic upward movement
			if not climbing:
				velocity.y = 0
				climbing = false


		# Reset velocity to prevent drifting when not climbing
		if not wall_check.is_colliding():
			velocity.x = 0
			velocity.z = 0
		


	else:
		gravity_enabled = true

	

	move_and_slide()



func _on_death_zone_area_entered(area):
	death()

func _on_end_deathzone_area_entered(area):
	death()

func add_coin():
	coin_counter = coin_counter + 1



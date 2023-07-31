extends Area3D


var player = "res://Player.tscn"
const BOUNCE_FORCE = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("player"):
 # Apply the bounce effect to the player
		var player = body as CharacterBody3D
		if player != null:
 # Set the upward velocity to achieve the bounce effect
			player.velocity.y = BOUNCE_FORCE
		else:
			print("Player not found or is null.")



   

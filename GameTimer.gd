extends Node


var high_score_timer = 0
var last_score_timer = 0
var saved_time = 0.0
var player_has_jumped = false

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	'if Input.is_action_just_pressed("jump"):
		self.text = str(GameTimer.score)
		GameTimer.score += 1
		print(GameTimer.score)'

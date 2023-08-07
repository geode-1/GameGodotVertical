extends Control

var coins = GameTimer.coins

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$MarginContainer/VBoxContainer/Coins.text = "Coins: " + str(GameTimer.coins)


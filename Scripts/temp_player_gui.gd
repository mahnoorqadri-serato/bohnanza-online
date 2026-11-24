extends Node2D

@export var playerNumber: int = -1

@onready var playerLabel: Label = $"Player/Player Label"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func set_player_label(id: int) -> void:
	playerNumber = id
	playerLabel.text = "Player " + str(playerNumber+1) #id is 0 indexed

func set_player_hand(hand: Hand) -> void:
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

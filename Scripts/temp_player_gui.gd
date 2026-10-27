extends Node2D

@export var playerNumber: int = -1

@onready var playerLabel: Label = $"Player/Player Label"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playerLabel.text = "Player " + str(playerNumber)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

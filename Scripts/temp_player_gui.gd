extends Node2D

@onready var playerLabel: Label = $"Player/Player Label"
@onready var handLabel: Label = $"Player/Hand Label"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func set_player_label(id: int) -> void:
	playerLabel.text = "Player " + str(id+1) #id is 0 indexed

func set_player_hand(hand: Hand) -> void:
	var names: Array[String] = []
	for card in hand.cards:
		names.append(card.name.substr(0, 3))
	handLabel.text = ", ".join(names)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

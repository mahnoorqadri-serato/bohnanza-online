extends Node

# initialize deck of 108 cards
var shuffleCount: int = 0
var currentDeck: Array[BeanCard] = []
const NUM_PLAYERS: int = 4
var currentPlayer: int = 0

const card_data: BeanCardData = preload("res://Data/bean_card_data.tres")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for bean_index in card_data.bean_freq.size():
		var frequency := card_data.bean_freq[bean_index]
		for _copy in frequency:
			currentDeck.append(BeanCard.new(
				card_data.bean_names[bean_index],
				frequency,
				card_data.beanometer_data[bean_index]
			))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

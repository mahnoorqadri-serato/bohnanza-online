extends Node3D

# initialize deck of 108 cards
var shuffleCount: int = 0
var currentDeck: Array[BeanCard] = []
const NUM_PLAYERS: int = 4
var currentPlayer: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for bean_index in BeanCardData.BEAN_FREQ.size():
		var frequency := BeanCardData.BEAN_FREQ[bean_index]
		for _copy in frequency:
			currentDeck.append(BeanCard.new(
				BeanCardData.BEAN_NAMES[bean_index],
				frequency,
				BeanCardData.BEANOMETER_DATA[bean_index]
			))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



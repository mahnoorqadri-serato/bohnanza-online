extends Node

var playerGuis: Array[Node2D] = []
const TEMP_PLAYER_GUI = preload("res://Scenes/TempPlayerGUI.tscn")
const GUI_HORZ_SPACING : int = 200

signal turn_started(player_index: int)
signal turn_ended(player_index: int)

# initialize deck of 108 cards
var shuffleCount: int = 0
var currentDeck: Array[BeanCard] = []
const NUM_PLAYERS: int = 4
var currentPlayer: int = 0		# current turn index
var players: Array[Player] = []

var playerLabels: Array[Label] = []

const card_data: BeanCardData = preload("res://Data/bean_card_data.tres")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Game initialised with %d players" % NUM_PLAYERS)
	turn_ended.connect(end_turn)
	for bean_index in card_data.bean_freq.size():
		var frequency := card_data.bean_freq[bean_index]
		for _copy in frequency:
			currentDeck.append(BeanCard.new(
				card_data.bean_names[bean_index],
				frequency,
				card_data.beanometer_data[bean_index]
			))

	var counts: Dictionary[String, int] = {}
	for card in currentDeck:
		counts[card.name] = counts.get(card.name, 0) + 1
	print("Initial deck: %d cards %s" % [currentDeck.size(), counts])
	
#	================== INITIAL DEAL
	
	currentDeck.shuffle() # hopefully this is good enough for now
	#for card in currentDeck:
		#print(card.name)

	for i in NUM_PLAYERS:
		var new_player = Player.new(i)
		players.append(new_player) #creates a player with 2 bean fields
		for ii in range(5): #start with 5 cards
			new_player.hand.enqueue(currentDeck.pop_front())

		#generate temp gui
		var gui = TEMP_PLAYER_GUI.instantiate()
		add_child(gui) # to make it show on screen, so that _ready and @onready run
		gui.set_player_label(new_player.id)
		gui.position.x += new_player.id * GUI_HORZ_SPACING
		playerGuis.append( gui )
		print("Player %d, Hand: %s, Fields: %s" % [new_player.id, new_player.hand.print(), new_player.print_fields()])
	
#	================== GAME STARTS

	print("GAME START \n \n \n")
	start_turn()

func start_turn() -> void:
	turn_started.emit(currentPlayer)

func end_turn(_player_index: int) -> void:
	print("Player" + str(currentPlayer) + " turn ended")
	currentPlayer = (currentPlayer + 1) % NUM_PLAYERS
	start_turn()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	return

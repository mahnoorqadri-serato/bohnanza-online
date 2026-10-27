class_name Player
extends RefCounted

const MAX_FIELDS: int = 3

var id: int
var hand: Hand
var fields: Array[Field] = []

signal turn_started(player_index: int)

func _init(player_id, field_count: int = 2) -> void:
	id = player_id
	hand = Hand.new()
	for _i in clampi(field_count, 0, MAX_FIELDS):
		fields.append(Field.new())
		
	connect("turn_started", play_turn)

func add_field() -> void:
	if fields.size() >= MAX_FIELDS:
		return
	fields.append(Field.new())

func print_fields() -> String:
	var names: Array[String] = []
	for field in fields:
		if field.card == null:
			names.append("empty")
		else:
			names.append(field.card.name)
	return "[" + ", ".join(names) + "]"
		
func play_turn() -> void:
	return

class_name Player
extends RefCounted

const MAX_FIELDS: int = 3

var hand: Hand
var fields: Array[Field] = []

func _init(field_count: int = 2) -> void:
	hand = Hand.new()
	for _i in clampi(field_count, 0, MAX_FIELDS):
		fields.append(Field.new())

func add_field() -> void:
	if fields.size() >= MAX_FIELDS:
		return
	fields.append(Field.new())

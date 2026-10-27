class_name Field
extends RefCounted

const card_data: BeanCardData = preload("res://Data/bean_card_data.tres")

# Index into card_data. -1 means the field is empty.
var card: BeanCard = null


func harvest() -> int:
	print("harvest calleed!")
	return 0

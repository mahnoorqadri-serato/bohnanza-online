class_name Field
extends RefCounted

const card_data: BeanCardData = preload("res://Data/bean_card_data.tres")

# Index into card_data. -1 means the field is empty.
var bean_id: int = -1
var bean_count: int = 0

func harvest() -> int:
	if bean_id < 0 or bean_count <= 0:
		return 0
	var beanometer := card_data.beanometer_data[bean_id]
	var required := [beanometer.x, beanometer.y, beanometer.z, beanometer.w]
	var coins := 0
	for coin_index in required.size():
		if required[coin_index] != -1 and bean_count >= required[coin_index]:
			coins = coin_index + 1
	bean_id = -1
	bean_count = 0
	return coins

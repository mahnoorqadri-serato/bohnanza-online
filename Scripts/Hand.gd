class_name Hand
extends RefCounted

# Index 0 is the front of the queue.
var cards: Array[BeanCard] = []

func enqueue(card: BeanCard) -> void:
	cards.append(card)

func dequeue() -> BeanCard:
	return cards.pop_front()

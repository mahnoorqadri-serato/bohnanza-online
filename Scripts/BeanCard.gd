class_name BeanCard
extends RefCounted

var name: String
var frequency: int
var beanometer: Vector4i

func _init(bean_name: String = "", frequency: int = 0, beanometer: Vector4i = Vector4i.ZERO) -> void:
	name = bean_name
	self.frequency = frequency
	self.beanometer = beanometer

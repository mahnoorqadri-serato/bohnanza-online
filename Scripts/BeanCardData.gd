class_name BeanCardData
extends RefCounted

# x = cards for 1 coin, y for 2, z for 3, w for 4. -1 means that payout is unused.
const COFFEE_BEANOMETER: Vector4i = Vector4i(4, 7, 10, 12)
const WAX_BEANOMETER: Vector4i = Vector4i(4, 7, 9, 11)
const BLUE_BEANOMETER: Vector4i = Vector4i(4, 6, 8, 10)
const CHILI_BEANOMETER: Vector4i = Vector4i(3, 6, 8, 9)
const STINK_BEANOMETER: Vector4i = Vector4i(3, 5, 7, 8)
const GREEN_BEANOMETER: Vector4i = Vector4i(3, 5, 6, 7)
const SOY_BEANOMETER: Vector4i = Vector4i(2, 4, 6, 7)
const BLACK_EYED_BEANOMETER: Vector4i = Vector4i(2, 4, 5, 6)
const RED_BEANOMETER: Vector4i = Vector4i(2, 3, 4, 5)
const GARDEN_BEANOMETER: Vector4i = Vector4i(-1, 2, 3, -1)
const COCOA_BEANOMETER: Vector4i = Vector4i(-1, 2, 3, 4)

const COFFEE_FREQ: int = 24
const WAX_FREQ: int = 22
const BLUE_FREQ: int = 20
const CHILI_FREQ: int = 18
const STINK_FREQ: int = 16
const GREEN_FREQ: int = 14
const SOY_FREQ: int = 12
const BLACK_EYED_FREQ: int = 10
const RED_FREQ: int = 8
const GARDEN_FREQ: int = 6
const COCOA_FREQ: int = 4

const BEAN_FREQ: Array[int] = [
	COFFEE_FREQ,
	WAX_FREQ,
	BLUE_FREQ,
	CHILI_FREQ,
	STINK_FREQ,
	GREEN_FREQ,
	SOY_FREQ,
	BLACK_EYED_FREQ,
	RED_FREQ,
	GARDEN_FREQ,
	COCOA_FREQ
]

const BEANOMETER_DATA: Array[Vector4i] = [
	COFFEE_BEANOMETER,
	WAX_BEANOMETER,
	BLUE_BEANOMETER,
	CHILI_BEANOMETER,
	STINK_BEANOMETER,
	GREEN_BEANOMETER,
	SOY_BEANOMETER,
	BLACK_EYED_BEANOMETER,
	RED_BEANOMETER,
	GARDEN_BEANOMETER,
	COCOA_BEANOMETER,
]

const BEAN_NAMES: Array[String] = [
	"Coffee Bean",
	"Wax Bean",
	"Blue Bean",
	"Chili Bean",
	"Stink Bean",
	"Green Bean",
	"Soy Bean",
	"Black-eyed Bean",
	"Red Bean",
	"Garden Bean",
	"Cocoa Bean",
]

extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_pressed() -> void:
	print("turn end button was clicked!")
	# gross dependency to the parent for now. eventually the turn end button will uhhh.... not sure
	var game_manager := get_parent()
	game_manager.emit_signal("turn_ended") # DOESN'T WORK

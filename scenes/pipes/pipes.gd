extends Node2D

class_name Pipes

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * 120.0
	check_off_screen()

func check_off_screen() -> void:
	if position.x < -250.0:
		queue_free()

func _on_screen_exited() -> void: # only works if the screen is being rendered (don't work when minimised)
	queue_free()

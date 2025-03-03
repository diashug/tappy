extends Node2D

class_name Pipes

const OFF_SCREEN: float = -250.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * GameManager.SCROLL_SPEED
	check_off_screen()

func check_off_screen() -> void:
	if position.x < OFF_SCREEN:
		queue_free()

func _on_screen_exited() -> void: # only works if the screen is being rendered (don't work when minimised)
	queue_free()

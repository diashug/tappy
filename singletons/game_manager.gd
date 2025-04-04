extends Node

const GAME: PackedScene = preload("res://scenes/game/game.tscn")

const SCROLL_SPEED: float = 120.0
const GROUP_PLANE: String = "Plane"

func load_game_scene() -> void:
	get_tree().change_scene_to_packed(GAME)

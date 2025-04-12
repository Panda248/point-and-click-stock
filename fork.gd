extends Node

@export var computer_scene : PackedScene
@export var hallway_scene : PackedScene
@export var window_scene : PackedScene

func _on_hallway_pressed() -> void:
	get_tree().change_scene_to_packed(hallway_scene)


func _on_computer_pressed() -> void:
	get_tree().change_scene_to_packed(computer_scene)


func _on_window_pressed() -> void:
	get_tree().change_scene_to_packed(window_scene)

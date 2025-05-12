extends Control

func _input(event: InputEvent) -> void:
	if(event.is_action("ui_accept")):
		get_tree().change_scene_to_file("res://office.tscn")

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://office.tscn")
	pass # Replace with function body.

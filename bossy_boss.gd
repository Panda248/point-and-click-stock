extends Control

@export var next : PackedScene;

func _on_video_stream_player_finish_playback() -> void:
	get_tree().change_scene_to_packed(next);
	pass # Replace with function body.

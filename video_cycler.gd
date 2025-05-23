extends VideoStreamPlayer

signal finish_playback;

@export var videos : Array[VideoStream]
var i = 0;

func _ready() -> void:
	if videos.size() > 0:
		stream = videos[0]
	play()


func _on_finished() -> void:
	i += 1
	if i == videos.size():
		emit_signal("finish_playback");
		i = 0
	stream = videos[i]
	play()

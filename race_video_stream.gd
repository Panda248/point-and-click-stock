extends VideoStreamPlayer

@export var videos : Array[VideoStream]
@export var dodgeScene : PackedScene
@export var explodeScene: PackedScene

var textRect : TextureRect

var index : int = 0

func _ready() -> void:
	stream = videos[index];


func _on_countdown_by_topupsounds_preview_finished() -> void:
	play();
	pass # Replace with function body.


func _on_finished() -> void:
	if(index < videos.size() -1):
		index+=1;
		stream = videos[index];
		play();
	else:
		get_tree().change_scene_to_packed(dodgeScene);


func _on_explosiontimeout_timeout() -> void:
	get_tree().change_scene_to_packed(explodeScene);
	pass # Replace with function body.

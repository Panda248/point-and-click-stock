extends Node

@export var timer : float
@export var stamp : Array[float]
@export var textures : Array[Texture2D]
@export var nextScene : PackedScene

var textRect : TextureRect

var index : int = 0

func _ready() -> void:
	timer = 0
	textRect = get_child(0, false)
	textRect.texture = ImageTexture.create_from_image(textures[index].get_image())

func _process(delta: float) -> void:
	#print(timer)
	timer += delta;
	if timer >= stamp[index] :
		index+=1
		if index == textures.size() :
			get_tree().change_scene_to_packed(nextScene)
			return
		textRect.texture = ImageTexture.create_from_image(textures[index].get_image())
		

extends Timer

@export var explosion : VideoStreamPlayer
@export var timer : Timer
@export var explodesound : AudioStreamPlayer

var dodged = false;

func _on_dodge_button_pressed() -> void:
	dodged = true;
	pass # Replace with function body.



func _on_timeout() -> void:
	if(!dodged):
		explosion.play();
		timer.start();
		explodesound.play();
	pass # Replace with function body.


func _on_button_spawn_timeout() -> void:
	start();
	pass # Replace with function body.

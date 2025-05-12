extends Button

func _ready() -> void:
	disabled = true;
	hide();

func _on_button_spawn_timeout() -> void:
	disabled = false;
	show();
	pass # Replace with function body.


func _on_pressed() -> void:
	disabled = true;
	hide();
	pass # Replace with function body.


func _on_button_timeout_timeout() -> void:
	disabled = true;
	hide();
	pass # Replace with function body.

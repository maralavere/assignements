extends CharacterBody2D

var dragging = false
var offset = Vector2(0, 0)

func _process(delta):
	if dragging:
		position.x = clamp(get_global_mouse_position().x - offset.x, 110, 1044)

func _on_button_button_down():
	dragging = true
	offset = get_global_mouse_position() - global_position

func _on_button_button_up():
	dragging = false

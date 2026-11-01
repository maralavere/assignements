extends VBoxContainer

@onready var dialogue_text = $DialogueText

var dialogue_lines = [
	"Hello!",
	"Are you new here?",
    "Anyway... Good luck on your adventure!"
]

var current_line = 0

func next_line():
	current_line += 1
	if current_line < dialogue_lines.size():
		dialogue_text.text = dialogue_lines[current_line]
	else:
		hide()

func _on_continue_pressed():
	next_line()

func _ready():
	dialogue_text.text = dialogue_lines[current_line]

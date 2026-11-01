extends HBoxContainer

var selected_slot = 0
@onready var slots = [$Slot1, $Slot2, $Slot3, $Slot4, $Slot5]

func select_slot(slot_number):
	selected_slot = slot_number - 1
	update_slots()

func update_slots():
	for i in range(slots.size()):
		if i == selected_slot:
			slots[i].add_theme_stylebox_override("panel", slots[i].get_theme_stylebox("selected", "PanelContainer"))
		else:
			slots[i].add_theme_stylebox_override("panel", slots[i].get_theme_stylebox("default", "PanelContainer"))

func _input(event):
	if event.is_action_pressed("hotbar_1"):
		select_slot(1)
	elif event.is_action_pressed("hotbar_2"):
		select_slot(2)
	elif event.is_action_pressed("hotbar_3"):
		select_slot(3)
	elif event.is_action_pressed("hotbar_4"):
		select_slot(4)
	elif event.is_action_pressed("hotbar_5"):
		select_slot(5)

# Called when the node enters the scene tree for the first time.
func _ready():
	update_slots()

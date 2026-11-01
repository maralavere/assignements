extends HBoxContainer

const MAX_HEALTH = 100
var current_health = 100

@onready var health_label = $HealthLabel
@onready var health_bar = $HealthBar

func _ready():
	update_health()
	take_damage(25)
	#used func to test health bar

func update_health():
	health_bar.max_value = MAX_HEALTH
	health_bar.value = current_health
	health_label.text = "HP: " + str(current_health) + "/" + str(MAX_HEALTH)

func take_damage(damage_amount):
	current_health -= damage_amount
	if current_health < 0:
		current_health = 0
	update_health()

func heal(healing_amount):
	current_health += healing_amount
	if current_health > MAX_HEALTH:
		current_health = MAX_HEALTH
	update_health()

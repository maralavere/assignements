extends Node
'''
Part 4)
Variable fun time! Here are some exercises to make sure you understand variables. If you can't solve them, watch https://www.youtube.com/watch?v=ijjVDBPwA1o
4.1) What is the final value of a in this example?
var a = 5
a = a - 3
a = 5
a = a + a
answer : a = 10
4.2) What is the final value of a in this example?
var a = 3
var b = 2
var c = a + b
var b = 0
var a = c - b
var b = 10
answer : a = 5
'''
# Called when the node enters the scene tree for the first time.
var health: int = 100
const max_health: int = 100
var speed: int = 50
var player_name = "Mochi"
func _ready() -> void:
		print(player_name, " | HP: ", health, "/", max_health, " | Speed: ", speed)
		take_damage(15)
		take_damage(15)
		heal()

func take_damage(amount):
	health -= amount
	print("Took ", amount, " damage", " | HP: ", health, "/", max_health)

func heal():
	while health < max_health:
		health += 7
		if health > max_health:
			health = max_health
		print("Healing | HP: ", health, "/", max_health)

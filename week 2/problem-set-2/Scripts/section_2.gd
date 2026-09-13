extends Node
#DISCLAIMER: I used AI to check my solutions, if I was not sure in them. I did write everything myself first and if not correct made adjustments.
#I did not copy what the AI said is the best/correct solution, instead I did the code how I understood it.
#Write a function greet() that prints "Hello, adventurer!" to the console.
func greet():
	print("Hello, adventurer!")
#Write a function add_score(points) that takes one parameter and returns the current score plus points.
var score := 5
func add_score(points):
	score +=  1
	return score
#Write a function is_alive(hp) that takes an integer hp and returns true if hp is greater than 0, and false otherwise.
var hp := 80
func is_alive(hp):
	if hp > 0:
		return true
	else:
		return false
#Write a function heal(current_hp, amount, max_hp) that returns the new HP after healing, but never lets it exceed max_hp.
var max_hp := 100
func heal(current_hp, amount, max_hp):
	current_hp += amount
	if current_hp > max_hp:
		current_hp = max_hp
	return hp
#What keyword built into every Godot Node script runs once when the node enters the scene tree? Write a stub for it that prints a number of your choice.
#I had to look the keyword up because I did not see it in the lessons :(
func _ready():
	print(4)
#How often does the _process() function run?
#Every frame, speed (times per second) depends on the game and the device

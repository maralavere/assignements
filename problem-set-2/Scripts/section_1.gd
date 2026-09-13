extends Node

#region Instructions
'''
Instructions: Assume all code runs inside a Godot Node script unless stated otherwise. 
Use correct GDScript syntax (indentation matters — GDScript uses tabs/spaces).

Quick Reference
Variable:
var health = 100
var speed: float = 250.0

Function:
func take_damage(amount):
health -= amount
return health

For loop
for i in range(5):
print(i)
for enemy in enemies:
enemy.speed += 10
'''
#endregion

#Declare a variable named player_name and assign it a name of your choice as value
var player_name = "Sushi"
#Declare a variable max_health with an explicit type annotation of int, set to 100.
var max_health: int = 100
#Declare a variable is_alive as a boolean, set to true.
var is_alive: bool = true
#What is the difference between var speed = 5 and const SPEED = 5? When would you use each in a game? Answer as a comment
'''
var is for values that change over time, so speed = 5 means that speed is 5 until it changes to either faster or slower due to some other action or function. const SPEED = 5 means that speed will not change and will always be 5.
I would use var speed = 5 for character speed, since character speed usually changes with abilities or level ups
I would use const SPEED = 5 for things like enemy speed or passive character speed, if they do not need to move faster to chase character etc.
'''

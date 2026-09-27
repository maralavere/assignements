extends Node

#1) Declare an array of strings with 5 names in it
var names = ["Peppa", "George", "Suzy", "Miss Rabbit", "Pedro"]
#2) Write a function that prints the names in order using a for loop and call it from _ready
func _ready():
	for name in names:
		print(name)
	swapping(names) #tested the swapping func with my array of names
#3) Write a function that takes in an array as an argument and swaps the first value with the last one.
func swapping(array_name):
	var last_value = array_name[-1] #access the last value and name it
	var first_value = array_name[0] #access the first value and name it
	array_name[0] = last_value #assign the last value as the new first value
	array_name[-1] = first_value #assign the old first value as the new last value
	for value in array_name:
		print(value)
#I could not figure out if I could do the swapping function with popping and appending or not, so I used simple reassigning.

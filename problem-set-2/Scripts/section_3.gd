extends Node

# Write a for loop using range() that prints the numbers 1 through 10 (inclusive).
func forloop():
	for number in range (1, 11):
		print(number)
#rewrite it as a while loop
var number = 1
func whileloop():
	while number <= 10:
		print(number)
		number += 1
#Given an array scores = [10, 9, 7, 10, 6], write a for loop that calculates and prints the total sum.
var scores := [10, 9, 7, 10, 6]
var sum = 0
func run():
	for element in scores:
		sum += element
	print(sum)

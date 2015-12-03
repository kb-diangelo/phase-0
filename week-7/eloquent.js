// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var name = "K.B.";
name = name + " " + "DiAngelo";

/*
prompt("What is your favorite food?");
alert("Wow, that's my favorite food too!");
*/

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board


for (var number = 1; number <= 100; number += 1) {
	if (number % 3 == 0 && number % 5 == 0)
		console.log("FizzBuzz")
	else if (number % 3 == 0)
		console.log("Fizz");
	else if (number % 5 == 0)
		console.log("Buzz");
	else
		console.log(number);
}

// Functions

// Complete the `minimum` exercise.

function min(item1, item2) {return (item1 < item2 ?  item1 : item2);}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "K.B. DiAngelo",
	age: 23,
	favorite_foods: ["beets", "potato chips", "pizza"],
	quirk: "loves fish"
}
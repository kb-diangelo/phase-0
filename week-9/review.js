// Guessing Game - JavaScript Version

// Input: 	A number
// Output:  	A game that lets you guess the number,
// =>  		and reflects whether your guess was low or high
// Steps:
	// 1. Define a function that takes a number as an argument
	// 1.1 Save that number to a variable
	// 2. Define a function guess that takes another number
 	// 2.2 set the solve state to false
	// 2.3 Compare that number to the correct number, return
	// "too low" if the guess is low and "too high" if the guess is high
	// 2.4 Return "correct!" if the guess is correct
	// and set the solve state to true

function GuessingGame(secret_number){
	this.answer = secret_number;
	this.solved = false;
	this.guess = function(guess) {
		if (this.answer > guess) {
			return "too low";
		} else if (this.answer < guess) {
			return "too high";
		} else 
			this.solved = true;
			return "correct!";	
		}
}

var new_game = new GuessingGame(10)
console.log(new_game.guess(5))
console.log(new_game.solved)
console.log(new_game.guess(15))
console.log(new_game.solved)
console.log(new_game.guess(10))
console.log(new_game.solved)




/* REFLECTION

* What concepts did you solidify in working on this challenge? 

Control flow in JavaScript, making constructor functions in JavaScript

* What was the most difficult part of this challenge?

This challenge was pretty straightforward, and dare I say, easier in JavaScript than in Ruby.

* Did you solve the problem in a new way this time?

Well I had to use a constructor function instead of a class, this being JavaScript.
I also had to return values that were strings instead of symbols, since there are 
no symbols in JavaScript. But my control flow structure was the same.

* Was your pseudocode different from the Ruby version? What was the same and what was different?

It was mostly the same. Since the language of pseudocode is designed to be language-
independent, I changed very little in solving this problem.

*/
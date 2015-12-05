// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: KB DiAngelo, Kerry Choy

// Pseudocode
/*
Input: A integer number
Output: A string, the number with commas separating it

Step 1: Convert the integer to a string
Step 2: Reverse it
Step 3: use a FOR loop to iterate over the string
Step 3.1: Add the first (last) three digits to an array/a new string?
Step 3.2: Add a comma to the end of the array/new string
Step 3.3: Add the next three digits to the end of the string
Step 3.4: Continue doing this until there are less than three digits left
Step 4: Reverse the string back
Step 5: Return it

*/
// Initial Solution
var separateComma = function(numbers) {
  
  var newnum = numbers.toString().split("");
  newnum.reverse();
  
  var newArray = [];
  
  for(var i = 0; i <= (newnum.length - 1); i += 3 ) {
  newArray.push(newnum[i], newnum[i+1], newnum[i+2])
  newArray.push(",")
  };
  
  newArray.pop()
  newArray.reverse() 

  var newString = newArray.join("")

  return newString
}


// Refactored Solution


var separateComma2 = function(numbers) {

  var numbersArray = numbers.toString().split("").reverse();
  
  for(var i = 3; i <= numbersArray.length; i += 4) {
    numbersArray.splice(i, 0, ",")
  };

  var commaNum = numbersArray.reverse().join('');

return commaNum ;
};

// Ultimate Refactor Just Using Built-In Methods

var separateComma3 = function(numbers) {
return numbers.toLocaleString();
  };

// Your Own Tests (OPTIONAL)

// (They work)

/* 
no
* What was it like to approach the problem from the perspective of JavaScript? 
  Did you approach the problem differently?

  For my intial solution, even though I did not look at my old Ruby solution to
  this exercise, I did everything nearly exactly the same: I reversed the number, 
  pushed 3 numbers at a time to the array, added a comma, etc etc. Even removing
  the initial comma was the same in my initial solution. 

* What did you learn about iterating over arrays in JavaScript?

  I recalled/reinforced the idea of the FOR loop in JS, which has no real equivalent
  in Ruby. It takes an inital value, a statement that will cause the loop to continue
  if true, and a way to update the value. Making the counter variable the index of 
  the array is a good way to iterate over arrays in JS.

* What was different about solving this problem in JavaScript?

  Well the methods have different names and the #splice method was new to me entirely.
  Also as I discussed above, the FOR loop in JS is a little different from anything
  in Ruby but is a fairly easy way to iterate over an array

* What built-in methods did you find to incorporate in your refactored solution?

  My pair and I found the #splice method, which inserts things at a given index in
  an array. For our 'ultimate refactor' we also found the method #toLocaleString,
  which does exactly what our entire program was designed to do.

  */
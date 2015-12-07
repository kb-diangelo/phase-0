 // JavaScript Olympics

// I paired with Nick Davies on this challenge.

// This challenge took me .5 hours.

// Bulk Up
var bob = {name: "Bob Jones", event:"Swimming"};
var jane = {name: "Jane Smith", event: "Running"};
var mary = {name: "Mary Johnson", event: "Boxing"};

var example_athletes = [bob, jane, mary];

var bulkUp = function(array_of_athletes) {
  array_of_athletes.forEach(function(athlete){
    athlete.win = function(){
      console.log(athlete.name + " won the " + athlete.event + "!");
    }
  })
}

bulkUp(example_athletes);
bob.win()

// Jumble your words
function reverseString(string){
  var array = string.split("");
  return array.reverse().join("");  
}

console.log(reverseString("Hello I am a human"))

// 2,4,6,8

var array = [1, 2, 3, 4, 5, 6];

var onlyEven = function(array_of_nums) {
  return array_of_nums.filter(function(number){
    return number % 2 == 0;
  })
}

console.log(onlyEven(array));

// "We built this city"
function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection 
/*

* What JavaScript knowledge did you solidify in this challenge?

The importance of remembering to use the var keyword whenever defining a variable.
How to iterate over an array in JS.
The #filter method.

* What are constructor functions?

They serve as a blueprint for creating a type of object out of information passed
to them.

* How are constructors different from Ruby classes (in your research)?

Constructors in JS only construct "object" objects. In Ruby, you create a whole new class
of object when you make a class. I think you can define functions as properties of the 
object you blueprint when you use a JS constructor, but not in the same way you can bundle
related methods in a Ruby class.

*/
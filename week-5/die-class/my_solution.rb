# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.75 hours on this challenge.

# 0. Pseudocode

# Input: when we create a new die, we give it a number of sides to have
# Output: a die object with two methods, sides and roll
# Steps:
# 1. the "initialize" method should check to see if the number passed to it is an integer greater than 1
# 1.1 if not, it should raise an error
# 1.2 if so, it should store that number in a variable
# 2. The "sides" method should return that variable
# 3. the "roll" method should return a random number between 1-that variable



# 1. Initial Solution

class Die
  def initialize(sides)
    if sides.is_a?(Integer) && sides > 1
    	@sides = sides
    else
    	raise ArgumentError.new("Die must have positive integer number of sides 2 or greater")
    end
  end

  def sides
    return @sides
  end

  def roll
    return 1 + rand(@sides)
  end
end



# 3. Refactored Solution (all the same but with implicit returns)
class Die2
  def initialize(sides)
    if sides.is_a?(Integer) && sides > 1
    	@sides = sides
    else
    	raise ArgumentError.new("Die must have positive integer number of sides 2 or greater")
    end
  end

  def sides
   @sides
  end

  def roll
    1 + rand(@sides)
  end
end

# 4. Reflection
=begin

* What is an ArgumentError and why would you use one?

	An ArgumentError is a type of error that lets you know you've passed a method
	the wrong number or the wrong type of argument(s). For example, if you pass a
	method 3 arguments when it takes 2 (or 5), an ArgumentError should be raised. It
	also makes sense to return an Argument error when you pass a method the wrong
	type of argument : a string instea of a number, for example.

* What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

	I used the rand() method, which returns a random number between 0 and a number
	passed to it, inclusive. The only issue I had was I had to add one to the result
	because die sides aren't numbered starting at 0. I also used the raise method 
	which raises a RuntimeError by default or another error if specified.

	Within the Die class, the sides and roll method were simple. The initialize method
	is what is run when Die.new is used. Why they called this initialize when you run it
	by using .new I don't quite understand but I guess it was a choice they made when they
	set up classes.

* What is a Ruby class?

	A ruby class is like a blueprint for a type of object. Using the .new method (the
	constructor) creates instances of a class. Classes can include a number of methods
	as well as class variables and instance variables.

* Why would you use a Ruby class?

	Classes are convenient to use. Creating a class and then instances of that 
	class allows you to have multiple objects with the same behaviors. You can
	also inherit features from other classes if you create a subclass of that 
	class. Basically classes allow you to bundle methods into a nice package
	for certain objects.

* What is the difference between a local variable and an instance variable?

	A local variable exists (has scope) only in the current context.
	For example, a variable created in a method only exists in that method
	and you can't access it from elsewhere.
	An instance variable's scope is one instance of a class - the object
	created by calling .new. 
	David A Black writes that an "instance variable enables individual
	objects to remember state". This means that while all die objects 
	have some value for @sides these could all be different. @sides
	varies by object but the fact that @sides exists is true for all dice.


* Where can an instance variable be used?

	An instance variable can be used in the methods defined in the class -
	EVEN IF they are created in a method in that class, they can be used
	in other methods in that class.

=end
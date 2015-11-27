# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 	A number
# Output:  	A game that lets you guess the number,
# =>  		and reflects whether your guess was low or high
# Steps:
	# 1. Define a method that takes a number as an argument
	# 1.1 Save that number to a variable
	# 2. Define a method guess that takes another number
	# 2.1 Compare that number to the correct number, return
	# :low if the guess is low and :high if the guess is high
	# and set the solve state to false
	# 2.2 Return :correct if the guess is correct
	# and set the solve state to true
	# 3. Define a method solved? that returns the solve state



# Initial Solution

class GuessingGame1
  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(number)
  	if number > @answer 
  		@solved = false
  		return :high
  	elsif number < @answer
  		@solved = false
  		return :low
  	else
  		@solved = true
  		return :correct
  	end
  end

  def solved?
  	return @solved
  end
end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(number)
  	if number == @answer
  		@solved = true
  		:correct
  	else
  		@solved = false
  		number > @answer ? :high : :low
  	end
  end

  def solved?
	@solved
  end
end

# Reflection
=begin
* How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

	Instance variables (as discussed below) allow different "behaviors" (methods)
	of an object to work with the same information, which may be unique to that object.
	In this case, the correct answer was stored in an instance variable and that 
	information was carried over to the guess method. 
	Methods allow a Ruby object to have a set of behaviors that are the same between 
	all the same instances of a class but whose output varies based on input.

* When should you use instance variables? What do they do for you?

	Instance variables keep their value throughout the same object (instance of a class).
	They allow you to carry values from one method to another associated with the same object.
	They allow different instances of the same class to carry different values.
	You should use instance variables when you need the above to be true and you want
	a variable scoped to a single instance of a class.

* Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

	Flow control is branching the results of an operation in different directions.
	In Ruby if/elsif/else and case statements are used to branch code, as well
	as the ternary conditional operator ? I didn't have any trouble using it in this 
	challenge initially but it was a little hard to refactor. 

* Why do you think this code requires you to return symbols? What are the benefits of using symbols?
	
	Symbols are unique and immutable and faster for Ruby to process than strings.
	However, they can easily be converted to strings.
	This code probably requires us to return symbols for efficiency.

=end
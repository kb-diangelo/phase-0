# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Randomly, one of those strings
# Steps: 
# 1: Create a class Die that takes an array of strings
# 2. the "initialize" method should check to see if what's passed to it is a non-empty array
# 2.1 if not, it should raise an error
# 2.2 if so store that array and its length in variables
# 2. The "sides" method should return the array length
# 3. the "roll" method should return a value from the array corresponding to a random index



# Initial Solution

class Die_1
  def initialize(labels)
  	if labels.is_a?(Array) && labels.length > 0
  		@sides = labels.length
  		@choices = labels
  	else
		raise ArgumentError.new("Input must be a non-empty array") 
	end
  end

  def sides
  	@sides
  end

  def roll
  	@choices[rand(@sides)]
  end
end


# Refactored Solution

class Die

attr_reader :sides

  def initialize(labels)
  	if labels.is_a?(Array) && labels.length > 0
  		@sides = labels.length
  		@labels = labels
  	else
		raise ArgumentError.new("Input must be a non-empty array") 
	end
  end

  def roll
  	@labels[rand(@sides)]
  end
end

# Reflection
=begin
* What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

	The last die took a number as the number of sides. This die takes an array of strings. 
	The main difference is that the random number itself was returned last time, while this
	time the random number generated is used as the index of an array value. The length 
	of the array is the number of "sides" the die has.

* What does this exercise teach you about making code that is easily changeable or modifiable? 

	It's better to make code that can be easily modified to adapt to new needs. Keeping the code
	simple and readable makes it easier to modify. 

* What new methods did you learn when working on this challenge, if any?

	I read up on the attr methods and used attr_reader. I used attr_writer first (which did
	not work) so I ended up learning about that one too. attr_reader takes the place of a 
	method that returns an instance variable.

* What concepts about classes were you able to solidify in this challenge?

	I was able to solidify my knowledge of how instance variables operate and how the 
	attr methods work. I recalled that classes all need an initialize method that 
	shows Ruby how to create the object. 

=end
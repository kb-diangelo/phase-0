#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = "K. B. DiAngelo"
	end
end

class Greetings
	def initialize
		@name_data = NameData.new
	end
	def hello
		puts "Hello #{@name_data.name}! How wonderful to see you today!"
	end
end

new_greeting = Greetings.new
new_greeting.hello

# Reflection
=begin
Release 1
* What are these methods doing?

	These methods are returning the value of instance variables (what_is_x) methods
	or changing the value of instance variables (change_my_x) methods.

* How are they modifying or returning the value of instance variables?

	They are acting by either returning the value of the instance variable by using
	its name, or modifying them by setting them equal to a new value that is given
	as an argument.

Release 2
* What changed between the last release and this release?

	Instead of having a method #what_is_age we used attr_reader on the age instance
	variable. This creates a new method, #age that returns the value of that instance
	variable.

* What was replaced?

	#what_is_age

* Is this code simpler than the last?

	Yes, it is shorter and simpler, as long as you understand what attr_reader does.

Release 3
* What changed between the last release and this release?

	Instead of having a method #change_my_age we used attr_writer on the age
	instance variable. The method #age can now return the value of the instance
	variable or rewrite it to a new value.

* What was replaced?

	#change_my_age

* Is this code simpler than the last?

	Yes, it is shorter and simpler, as long as you understand what attr_writer does.

Release 6
* What is a reader method?

	A reader (also called a getter method) reads/gets the value of an instance variable
	and returns it. It does not change the value of the variable.

* What is a writer method?

	A writer method (also called a setter method) writes/sets the value of an instance
	variable to a new value from outside the class. The new value is assigned with an =. 

* What do the attr methods do for you?

	They are shortcuts to create reader/writer/accessor (both reader and writer) methods
	with the same name as the instance variable they read/modify.

* Should you always use an accessor to cover your bases? Why or why not?

	No, if a variable only needs to be read or written to, you should use reader and 
	writer methods. Accessor methods may give too much power to other methods to 
	both read and write data to the instance variables of your object and make things 
	harder to debug and less secure.

* What is confusing to you about these methods?	

	These methods make sense.

=end
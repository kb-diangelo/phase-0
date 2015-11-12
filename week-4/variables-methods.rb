# Full name greeting program

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Your name is #{first_name} #{middle_name} #{last_name}!"

# Favorite number program

puts "What is your favorite number?"
fav_num = gets.chomp
new_num = fav_num.to_i + 1
puts "I see your favorite number is #{fav_num}. But isn't #{new_num} a bigger, better number?"

=begin
	
* How do you define a local variable?

You can define a local variable by using the assignment operator =.
A valid variable name can be any combination of letters, numbers, and underscores but must start with a lowercase letter.
example:
my_variable = "My variable value."

* How do you define a method?

To define a method use the def and end keywords, with what you want to happen betwen them.
When you define a method you also need to specify which parameters it takes.
You can write the method one of two ways:
	def name_of_method(parameter1, parameter2, parameter3)
		something something soomething
	end
or
	def name_of_method argument1, argument2, argument3
		something something something
	end

* What is the difference between a local variable and a method?

	A local variable stores a value, like an integer or a string.
	A method is like a named block of code that acts to do something.
	They are similar in that they "store" information for later but otherwise completely different.
	They are defined differently (see above).

* How do you run a ruby program from the command line?

	If the program is stored in a .rb file you can use the command:
	ruby filename.rb

* How do you run an RSpec file from the command line?

	Use the command:
	rspec filename.rb

* What was confusing about this material? What made sense?

	This material was more or less a review of things I studied in CodeCademy, so it wasn't that confusing.
	I was able to get through the exercises fairly quickly.
	But I feel like it was a good and useful review of various facets of local variables and methods.

* Address Exercise 
https://github.com/kb-diangelo/phase-0/blob/master/week-4/address/my_solution.rb

* Defining Math Methods Exercise
https://github.com/kb-diangelo/phase-0/blob/master/week-4/math/my_solution.rb

=end
# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# supposedly on line 189
# 3. What is the type of error message?
# 	syntax error
# 4. What additional information does the interpreter provide about this type of error?
# 	the interpreter expected an "end" to go with the "while"
# 5. Where is the error in the code?
# 	at the very end of the file, because the things that need to have "End"s don't all have them.
# 6. Why did the interpreter give you this error?
# 	"while" requires an "end" to show the interpeter when the "while" loop ends

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 	line 35
# 2. What is the type of error message?
# 	Name Error (in <main>)
# 3. What additional information does the interpreter provide about this type of error?
# 	there is an undefined local variable "south_park"
# 4. Where is the error in the code?
# 	it's where south_park exists with no value assigned to it
# 5. Why did the interpreter give you this error?
# 	Ruby doesn't allow a variable to be declared without some value attached to it. The interpreter doesn't know what to do with this variable.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 	line 50
# 2. What is the type of error message?
# 	NoMethodError (in <main>)
# 3. What additional information does the interpreter provide about this type of error?
# 	the method "cartman" is undefined
# 4. Where is the error in the code?
# 	on line 50 when we try to call the undefined method "cartman"
# 5. Why did the interpreter give you this error?
# 	you can't call a method that you haven't defined yet. The interpreter has no idea how to execute it.

# --- error -------------------------------------------------------
=begin
def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')
=end
# 1. What is the line number where the error occurs?
# 	line 65
# 2. What is the type of error message?
# 	Wrong number of arguments (ArgumentError)
# 3. What additional information does the interpreter provide about this type of error?
# 	the error comes from line 69 when we attempt to call the method
# 4. Where is the error in the code?
#  	depends how you look at it. It could either be in in line 65 where the method is defined as having no parameters, or on line 69 where we try to pass it an argument.
# 5. Why did the interpreter give you this error?
# 	we are attempting to pass an argment to a method that doesn't take any arguments, and that confuses the interpreter

# --- error -------------------------------------------------------
=begin
def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says
=end
# 1. What is the line number where the error occurs?
# 	line 84
# 2. What is the type of error message?
# 	ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#  	There's the wrong number of arguments being passed to the method
# 4. Where is the error in the code?
#  	it makes most sense to say the error is on line 88, where cartman_says is being called without any arguments
# 5. Why did the interpreter give you this error?
# 	This method requires the paramenter "offensive_message" and unless it is passes some argument to use as this offensive message, it can't run



# --- error -------------------------------------------------------
=begin
def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')
=end
# 1. What is the line number where the error occurs?
# 	line 105
# 2. What is the type of error message?
#  	ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#  	The wrong number of arguments (1 for 2) is being provided
# 4. Where is the error in the code?
# 	on line 109, where the method is being called with only one argument
# 5. Why did the interpreter give you this error?
#  	this method takes two parameters, a lie and a name. But when we call it, we are only passing one argument to the method, confusing the interpreter.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 	line 124
# 2. What is the type of error message?
#  	TypeError
# 3. What additional information does the interpreter provide about this type of error?
#  	String can't be coerced into Fixnum
# 4. Where is the error in the code?
#  	on line 124 where we attempt to multiply a fixnum by a string
# 5. Why did the interpreter give you this error?
# 	you can in fact multiply a string by a positive integer (repeating it that # of times), but the opposite is not true. Ruby doens't know how to multiply a number by a string (and neither do I). 

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 	line 139
# 2. What is the type of error message?
#  	ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# 	we tried to divide by zero
# 4. Where is the error in the code?
# 	where we tried to divide 20 by 0
# 5. Why did the interpreter give you this error?
# 	dividing by zero is impossible, even for Ruby

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 	line 155
# 2. What is the type of error message?
# 	LoadError
# 3. What additional information does the interpreter provide about this type of error?
#  	Ruby cannot load the file
# 4. Where is the error in the code?
# 	Where we try to load the file "cartman's essay"
# 5. Why did the interpreter give you this error?
# 	There is no file "cartman's_essay" as a relative (or otherwise) that the interpreter can find.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
* Which error was the most difficult to read?

	All the errors were fairly straighfoward to read, but the most difficult one was probably the second one, where the error line number was the end of the file. It makes sense that it was there, though, as Ruby would keep looking for this "end" all the way down the file until it reached the end if it couldn't find it.

* How did you figure out what the issue with the error was?

	I was able to figure out what the issue with the error was by looking at where the error was, what the type was, and the description of the error. The error descriptions were quite informative in teling me what I should be looking for with each error.

* Were you able to determine why each error message happened based on the code? 

	Yes, I think I understand why every error message was present based on a combination of the error messages that the interpreter was giving me and the code itself.

* When you encounter errors in your future code, what process will you follow to help you debug?
	
	I will carefully read the error messages, taking into account the description and the line number in which the error was found. I will locate the spot where the error is said to occur and study the code, keeping in mind the type of error, to see where I could have gone wrong.

=end
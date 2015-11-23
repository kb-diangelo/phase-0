
# Numbers to Commas Solo Challenge

# I spent 2.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 

# => a positive integer

# What is the output? (i.e. What should the code return?)

# => a string of that integer, separated by commas

# What are the steps needed to solve the problem?
=begin
1 - convert the integer into a string
2 - if the string length is 3 or less, return the string
3 - if the string length is 4 or longer
	3.2 - put the last three digits into a new string
	3.3 - add a comma to beginning of that new string
	3.4 - put the next three digits into that new string
	3.5 - add a comma to the beginning of that new string
	3.6 - repeat until all digits are used up
4 - return the new string	
=end


# 1. Initial Solution

def separate_comma(int)

	int_string = int.to_s

	if int_string.length <= 3
		return int_string
	
	else
		int_string.reverse!
		new_string = ""

		n = 0
		while n < int_string.length
			new_string << int_string[n..n+2] + ','
			n = n + 3
		end
		
		new_string.reverse!
		new_string[0] = ""
		
		return new_string
	end
end

# 2. Refactored Solution
 
def separate_comma2(integer)

	integer_string = integer.to_s

	if integer_string.length <= 3
		return integer_string
	else
		
	integer_string.reverse!
	new_string = String.new
		
	n = 0
	while n < integer_string.length
		new_string << integer_string[n..n+2] + ','
		n = n + 3
	end
		
	new_string.chop!.reverse!

	return new_string
	end
end

#tests
puts separate_comma2(123456789)
puts separate_comma2(12345678)
puts separate_comma2(1234567)

# 3. Reflection
=begin

What was your process for breaking the problem down? 
What different approaches did you consider?

	The first thing that obviously needed to happen was to
	convert the integer to a string. And strings can be treated,
	in some ways, like arrays of letters in that each character 
	has an "index" in the string and ranges of characters can
	be appended to a new or existing string. So my first idea,
	and the one I ended up going with, was to push three
	characters a a time to a new string, followed by a comma.

Was your pseudocode effective in helping you build a successful initial solution?

	It was in some ways. I could have been way more in depth
	with my pseudocode about how exactly my while loop was 
	going to work and I think I would have benefitted from that.
	But the basic idea of my psuedocode - that I would be
	pushing to a new string three characters at a time, was a
	big part of my solution.


What new Ruby method(s) did you use when refactoring your solution? 
Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). 
Did it/they significantly change the way your code works? If so, how?

	I was pretty frustrated when refactoring my solution and 
	ended up not really making any major changes. Most of what I 
	found in the docs that seemed relevant had to do with regular
	expression, which we were not supposed to use. So I changed 
	only the name of a variable and used .chop! before I reversed
	the string instead of using [0] = "". I think this is more 
	readable and just a better practice that setting the first 
	character of the string to the empty string.

How did you initially iterate through the data structure?

	I used a while loop: while a counter variable was <
	the length of the string, push three values at a time 
	to a new string (followed by a comma).

Do you feel your refactored solution is more readable than your initial solution? Why?

	Barely. I changed very little. I did change a variable
	name, it's now longer but I think it's a little more 
	readable. I also used the .chop! method instead of setting
	a character to the empty string, which does the exact same
	thing but in a more readable fashion.

=end
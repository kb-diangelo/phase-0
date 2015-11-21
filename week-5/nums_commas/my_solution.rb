
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
 
def separate_comma2(int)
	int_string = int.to_s
	if int_string.length <= 3
		return int_string
	else
		
		return new_string
	end
end

# 3. Reflection
=begin

- What was your process for breaking the problem down? What different approaches did you consider?



- Was your pseudocode effective in helping you build a successful initial solution?



- What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?



- How did you initially iterate through the data structure?



- Do you feel your refactored solution is more readable than your initial solution? Why?
=end
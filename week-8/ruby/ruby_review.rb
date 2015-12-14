#SUPER FIZZBUZZ

# I worked on this challenge by myself.
# This challenge took me [#] hours.


# Pseudocode
=begin
1. Iterate over the provided array. For each item in the array...
1.1 Check to see if it is divisible by 3 and 5. If so replace it with FizzBuzz
1.2 Check to see if it is divisible by 3. If so replace it with Fizz
1.3 Check to see if it is divisible by 5. If so replace it with Buzz
1.4 Return the modified array. 
=end


# Initial Solution

def super_fizzbuzz(array)

	return array.map do |number|
		if number % 3 == 0 && number % 5 == 0
			number = "FizzBuzz"
		elsif number % 3 == 0 
			number = "Fizz"
		elsif number % 5 == 0
			number = "Buzz"
		else
			number = number
		end
	end

end

puts super_fizzbuzz([10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])

# Refactored Solution

# Same as above, couldn't think of a better way.

# Reflection
=begin
* What concepts did you review or learn in this challenge?

How to iterate over an array in Ruby, the use of #map.

* What is still confusing to you about Ruby?

I think I have a good grasp on the subjects in Ruby we've covered so far.

* What are you going to study to get more prepared for Phase 1?

I am going to do all the Ruby challenges including the ones that introduce
new ideas.

=end
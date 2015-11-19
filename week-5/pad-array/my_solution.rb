# Pad an Array

# I worked on this challenge Joe Plosker.

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? 
#  - an array, an integer, and optionally something to pad the array with
# What is the output? (i.e. What should the code return?)'
#  - the new padded array (for the non-destructive one)
#  - the same array, but padded (for the destructive one)
# What are the steps needed to solve the problem?
=begin

1) define a method called pad or pad! that takes three arguments
2) if the length of the array >= mininum length, return the array
3) if not...
3.5) if the method is non-destructive, create a new array
4) until the length of the array = minimum length
5) push whatever we're padding to the end of the array (or the new array in the non-destructive case)

=end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.length >= min_size 
    return array
  else 
    until array.length == min_size
      array.push value
    end
    return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = Array.new()
  (new_array << array).flatten!
  if new_array.length >= min_size
    return new_array
  elsif min_size == 0
    return new_array
  else 
    until new_array.length == min_size
      new_array.push value
    end
    return new_array
  
  end
end

# 3. Refactored Solution

def pad2(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup
  if (new_array.length >= min_size) || (min_size == 0)
    return new_array
  else 
    until new_array.length == min_size
      new_array.push value
    end
    return new_array
  end
end


# 4. Reflection

=begin
 
* Were you successful in breaking the problem down into small steps?

Yes my pair and I pseudocoded the problem into steps that we could implement fairly easily.

* Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Once we had written our psuedocode, we were able to easily translate into code pretty easily.
The hardest part was in the case of non-destructive pad, step 3.5, create the new array.
As I will discuss below, we had a problem with not altering the existing array.

* Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

We had a big problem implementing psuedocode step 3.5 for non-destructive pad.
Initially, we copied the existing array into a new array simply by assigning
new_array = existing_array
and then making changes to new array. But this affected the existing array too.
This is because variables serve only as pointers that point to values.
We initially solved the problem by concatenating the existing array to a newly created array, and then flattening the new concatenated array. 
After refactoring, we used the .dup method to copy the existing array to a new array.

* When you refactored, did you find any existing methods in Ruby to clean up your code?

We learned about .dup which I discussed above. 

* How readable is your solution? Did you and your pair choose descriptive variable names?

The only thing we had to name was the new array to be returned in the non-destructive pad case.
We called it new_array which I think is pretty descriptive.

* What is the difference between destructive and non-destructive methods in your own words?

A non-destructive method doesn't change whatever it is acting upon.
It returns a new value that is totally separate from whatever it was passed.
A destructive method does make changes to whatever it is acting upon.
It returns a new version of whatever it was passed (that it's acting on).

=end
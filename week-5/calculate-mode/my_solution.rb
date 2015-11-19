# Calculate the mode Pairing Challenge

# I worked on this challenge with Matthew Oppenheimer

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode
# What is the input? Input an array of numbers or strings.
# What is the output? (i.e. What should the code return?) an array of numbers or strings.
# What are the steps needed to solve the problem? 
=begin

1-  define a method that will take in an array as an argument. 

2-  the method should create an empty hash.

3-  The method will look at each item in the array.   
  
  3.1 see if the item is in the hash
  
  3.2 if the item is not in the hash the method will add the item to the hash as a key with a value of 1.
 
  3.3 If the item is in the hash it will add 1 to the value of the key.

4-  sort the hash (* or just find the highest value(s))

5-  create a new empty array.

6-  add the key(s) with the highest value to the new empty array.

7-  return the array.
=end


# 1. Initial Solution

def mode(array)
  mode_hash = {}
  array.each do |item|
    if mode_hash.has_key?(item) == false
      mode_hash[item] = 1
    else
      mode_hash[item] += 1
    end
  end
  highest_value = 0
  mode_hash.each do |key, value|
    if value > highest_value
      highest_value = value
    end
  end
  result_array = []
  mode_hash.each do |key, value|
    if (value == highest_value)  && (result_array.include?(key) == false)
      result_array << key
    end
  end
  return result_array
end


# 3. Refactored Solution

def mode2(array)
  mode_hash = {}
  array.each do |item|
    if !mode_hash.key?(item)
      mode_hash[item] = 1
    else
      mode_hash[item] += 1
    end
  end    
  highest_value = 0
  mode_hash.each_value do |value|
    highest_value = value if value > highest_value
  end
  result_array = []
  mode_hash.each do |key, value|
    result_array << key if (value == highest_value)  && (result_array.include?(key) == false)
  end
  return result_array
end


def mode3(array)
 mode_hash = Hash.new(0)
 
 array.each do |item|
     mode_hash[item] += 1
 end    

 highest_value = mode_hash.values.sort.pop

 mode_hash.delete_if {|key, value| value < highest_value}
 # same as Keep_if {|key, value| value = highest_value}
 return_array = []
 mode_hash.each {|k,v| return_array.push(k)}
 return_array
end



# 4. Reflection
=begin

* Which data structure did you and your pair decide to implement and why?

A hash. We decided that a hash would provide the best histogram, with the keys as values from the array and the values as the # of times they appeared.
No other data structure really occured to us.

* Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 

I think so. Our pseudocode was very helpful in helping us solve the problem.
We spent a lot of time on it but I think it helped save us time later.

* What issues/successes did you run into when translating your pseudocode to code?

Not really any particular issues. It was pretty seamless.
But then we had to go back to the pseudocode and make sure we were really being as efficient as possible.
As you can see, mode3 is pretty different from the pseudocode.
I think we could have spent even MORE time on the pseudocode and made sure that it was really at maximal efficiency.

* What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

We used .each, obviously. 
My pair also discovered .delete_if which was a little difficult to implement but ultimately made sense.

Unrelated to iterations, we also used the following when refactoring:
.sort, .pop, .key? (same as .has_key?) .include?

=end
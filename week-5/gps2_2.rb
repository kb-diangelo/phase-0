# GPS 2-2 RUBY
# KB DiAngelo & Monique Williamson
# Guide: Matthew Higgins

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 

  # create a hash
  # set default quantity to 1
  # break up the string with whitespace as the divider
  # put each of those items into the hash
  # print the list to the console [can you use one of your other methods here?]
# output: hash - keys are grocery items, and the values are quantities

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # add a key-value pair to the hash
# output: the hash, but with a new value added

# Method to remove an item from the list
# input: item name 
# steps: 
  # remove a key-value pair from the hash
# output: the hash, but with the value removed

# Method to update the quantity of an item
# input: item name and new quantity amount
# steps:
  # find key and update value
# output: the hash with updated quantities

# Method to print a list and make it look pretty
# input: the hash  
# steps:
  # print out "Your Grocery List"
  # prints all hash items with values
# output: the complete hash


def make_list(grocery_string)
  groceries = Hash.new(1)
  grocery_array = grocery_string.split(" ")
  grocery_array.each { |item| groceries[item] = 1 }
  print_list(groceries) 
  return groceries
end

def add_item(list, item, quantity)
  list[item] = quantity
end

def remove_item(list, item)
 list.delete(item)
end

def quantity_update(list, item, quantity)
    list[item]= quantity
end

def print_list(list)
  list.each { |item, quantity| puts "#{item} ... #{quantity}" } 
end

=begin
* What did you learn about pseudocode from working on this challenge?

This challenge reinforced the idea that pseudocode is helpful and important.
Understanding what the input and the output of each method was was the key to this challenge.
I also learned that sometimes if you skip a step in pseudocoding and discover you need
to do it later, it can be helpful to go back and look at all your pseudocode again.

* What are the tradeoffs of using Arrays and Hashes for this challenge?

One good thing about arrays is that a string can easily be split (.split) into an array.
It is not so simple to split an array into hash keys, as my pair and I learned (by Googling.)
So we had to split the input into an array first and iterate over that to get the keys in our hash.
We wanted to use a hash because the key-value structure made a lot of sense when we needed
to pair an item name with a specific quantity.
So ultimately a hash was the better choice.

* What does a method return?

A method can return basically anything that you specify with the return keyword.
In this challenge, we didn't return much.
We only returned the hash for the first method, make_list

* What kind of things can you pass into methods as arguments?

You can pass any object into a method.
In this case, we used strings, hashes, and integers as arguments.

* How can you pass information between methods?

You can pass information between methods by saving the result of a method to a variable
and then passing that variable to the next method. This was the key to this challenge.

* What concepts were solidified in this challenge, and what concepts are still confusing?

Solidified:
- Being really careful when you pseudocode the input/output of a method is critical 
for being efficient when it comes to writing your methods. 
- You can save the result of a method to a variable and then pass it to another method
to pass information between methods.

Confusing:
- The idea of stringing methods together

=end
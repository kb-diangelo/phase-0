# Your Names
# 1) Jack Abernathy
# 2) KB DiAngelo

# Guide : Charlotte

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Error checking
  if !menu.has_key?(item_to_make)
    raise ArgumentError.new ("#{item_to_make} is not a recognized bakery item.")
  end

  # Finding serving size and amount of hungry leftover
  serving_size = menu[item_to_make]
  hungry_people = order_quantity % serving_size

  # Returns String based on whether there are hungry people left or not 
  if hungry_people == 0
   puts "Make #{order_quantity/serving_size} of #{item_to_make}"
  else
   puts "Make #{order_quantity/serving_size} of #{item_to_make}, you have #{hungry_people} hungry people. You should buy #{hungry_people} cookie(s) for them. Or make #{order_quantity/serving_size + 1} of #{item_to_make}. You will have #{serving_size - hungry_people} leftover slices."
  end

end

serving_size_calc("pie", 7)
serving_size_calc("pie", 8)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
# serving_size_calc("salad", 45)

#  Reflection

=begin

* What did you learn about making code readable by working on this challenge?

  The idea that the very shortest way to write something is not always
  the most readable way to write something was solidified in this challenge.
  We thought about using return (something) if (something) but our guide
  helped us realize that while that was shorter, it was less readable.

* Did you learn any new methods? What did you learn about them?

  The only new method we used in this challenge was hash#has_key? which
  returns true if the key is present and false if it is not. This method
  is great for checking whether a certain hash key is present.

* What did you learn about accessing data in hashes? 

  There was some really convoluted way to access the value of the key 
  before we refactored. It is much easier to just write hash[key] to get
  a value stored with a hash key.

* What concepts were solidified when working through this challenge?

  * The concept of Don't Repeat Yourself
  * Correct use of case statments for when there are way more than 
    2 possible cases (as there were not here).
  * Return vs. printing to the console
  * Shorter is not always better when it's not readable

=end
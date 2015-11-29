# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Jon Huange.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: 16 digit credit card number
# Output: true or false
# Steps:
=begin
Step 1:
Break the input string into an array, remove the spaces
Double every other digit starting from the first digit

Step 2:
Break apart doubled digits (10 -> 1 & 0) into two array values
Push to new array
Sum up all values in the new array

Step 3:
check_card method
IF sum is a multiple of 10, return true
ELSE return false

=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  
  def initialize(card_no)
    if card_no.to_s.length != 16
      raise ArgumentError.new("Invalid credit card number.")
    end
    @card_no = card_no
  end
  

  def double_digit
    card_array = @card_no.to_s.split(//)
    card_array.each_with_index{|digit, index| index.even? ? card_array[index] = (digit.to_i * 2).to_s : card_array[index] = digit}
    return card_array
  end
  
  def sum_digits(array)
    new_array = []
    array.each do |number|
      if number.length == 1
        new_array << number.to_i
      else
        mini_array = number.to_s.split(//)
        mini_array.each {|digit| new_array << digit.to_i}
      end    
    end
    return new_array.reduce(:+)
  end
  
  
  def check_card
    sum_digits(double_digit) % 10 == 0 ? true : false 
  end

end

# Refactored Solution

class CreditCard2

  def initialize(card_no)
    raise ArgumentError.new("Invalid credit card number.") if card_no.to_s.length != 16
    @card_no = card_no
  end
  
  def double_digit
    card_array = @card_no.to_s.split(//)
    card_array.each_with_index{|digit, index| card_array[index] = (digit.to_i * 2).to_s if index.even?}
    return card_array
  end
  
  def sum_digits(array)
    array.map! {|number| number.split(//)}.flatten!
    array.map! {|number| number.to_i}
    return array.reduce(:+)
  end
    
  def check_card
    sum_digits(double_digit) % 10 == 0 ? true : false 
  end

end

# Reflection
=begin
* What was the most difficult part of this challenge for you and your pair?

  My pair and I assumed that the input would be a string in the form 
  "xxxx xxxx xxxx xxxx" when in fact (according to the rspec file) the input
  is actually a 16-digit integer. Because of this we did a bit of unnecessary
  work but it means we also caught on quickly to the idea of converting
  between strings (so we could use string methods like #split and #length) 
  and integers which solved a lot of potential problems in treating a number
  digit by digit (character by character).

* What new methods did you find to help you when you refactored?

  Well even before we refactored we found/remembered:
  #split -  takes a regular expression and splits a string into an array of 
            strings accordingly
  #reduce (same as #inject) - combines all elements of an enumerable according
            to a rule you provide
  #even? - returns true or false if a number is even or not

  When we refactored we additionally used:
  #map! - iterates over an array and changes values in-place
  #flatten! - turns a nested array into a one dimensional array

* What concepts or learnings were you able to solidify in this challenge?

  I solified (for like the third time) all differences between strings of 
  digits characters and true fixnums. In addition I was able to review the
  uses of #split, #reduce, #map!, and #flatten. My pair and I also discussed
  when to use the ternary conditional over an if/else statement and 
  readability vs keeping our code short.

=end
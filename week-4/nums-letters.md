* What does puts do?

*puts* prints the output to the console with a new line. It returns nil, which is a value that represents "nothing" or "nothing there". 

* What is an integer? What is a float?

An integer is a whole number, like 1 or 15. It has no decimal component. A float, or floating-point number, does have a decimal component. Numbers like 1.5 and 15.66666 are floats. 

* What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division gives you the precise value of your division operation with decimals. For example 3/2 in float division is 1.5. It is the kind of division most of us learned about in school. Integer division gives you the value of your division operation to the nearest whole number when rounded down. For example, 3/2 would be 1; 1.5 gets rounded down. Integer division is more useful in many real-world applications than float division, because it allows you to see how many *whole* times one value goes into another value. 


* How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby can do all of those mathematical operations using the operators +, -, *, and /, respectively. It acts the way you would expect a calculator to, with the exception of integer divsion (discussed above).

* What are strings? Why and when would you use them?

A string is a group of characters including letters, spaces, digits, and punctuation. A string can be encased in 'single' or "double" quotes. This marks the sequence as a string. Therefore "370" is a string with the characters (digits) "3" "7" and "0" while 370 without any quotes represents the integer 370. You can use strings to contain blocks of text in your program. Certain methods, such as .upcase and .reverse work on strings (these two would make the string all capitals and reverse the string, respectively).

* What are local variables? Why and when would you use them?

Local variables store values under a name for later use. In Ruby, the name of a variable can contain any combination of letters and numbers but the first character must be a lowercase letter. You would use a variable any time you want the program to "hold on to" a value (such as a string or an integer) to be used later. 

* How was this challenge? Did you get a good review of some of the basics?

This challenge was a good review of some of the very basic aspects of Ruby. I remembered a lot from the Codecademy course, so I was able to complete it quickly.

[Defining Variables](defining_variables.rb)

[Simple String Methods](simple-string.rb)

[Basic Arithmetic](basic-math.rb)

```ruby
=begin 
	A program that calculates the hours in a year.
	There are 365 days in a year and 24 hours in each day.
=end

puts "Hours in a year:"
puts 365*24


=begin 
	A program that calculates the minutes in a decade.
	There are 365.25 days in a year and 24 hours in each day.
	Each hour has 60 minutes.
	There are 10 years in a decade.
=end

puts "Minutes in a decade:"
puts 10.0*365.25*24.0*60.0

```


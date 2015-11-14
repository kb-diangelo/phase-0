
# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number == 0
  	return 1
  else
  	total = 1
  	until number == 1
  		total = total * number
  		number = (number-1)
  	end
  	return total
  end
end

puts factorial(5)

# Factorial

# I worked on this challenge with Monique Williamson.


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

# using built-in ruby methods

def factorial2(number)
  if number == 0
    return 1
  else
    return (number * factorial(number-1))
  end
end
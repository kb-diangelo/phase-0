# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  	new_array = []
  	array_1.each do |item|
  		new_array.push(item)
 	end
  	array_2.each do |item|
  		new_array.push(item)
  	end
  return new_array
end

# REFACTORED SOLUTION AFTER RESEARCH

def array_concat2(array1, array2)
	return array1.concat(array2)
end
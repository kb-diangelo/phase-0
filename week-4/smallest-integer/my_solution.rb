# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below

# THIS SOlUTION USES ITERATION.

def smallest_integer(list_of_nums)
  if list_of_nums == []
    return nil
  else
    smallest_num = list_of_nums[0]
    list_of_nums.each do |num|
      if num < smallest_num
        smallest_num = num
      end
    end
    return smallest_num
  end
end

# THIS SOLUTION USES BUILT-IN RUBY METHODS

def smallest_integer2(list_of_nums)
  list_of_nums.sort!
  return list_of_nums[0]
end
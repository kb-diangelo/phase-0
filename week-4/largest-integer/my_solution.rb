# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  if list_of_nums == []
    return nil
  else
    largest_num = list_of_nums[0]
    list_of_nums.each do |num|
      if num > largest_num
        largest_num = num
      end
    end
    return largest_num
  end
end

# THIS SOLUTION USES BUILT-IN RUBY METHODS

def largest_integer2(list_of_nums)
  list_of_nums.sort!.reverse!
  return list_of_nums[0]
end
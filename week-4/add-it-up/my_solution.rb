# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Monique Williamson.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: the sum of all the numbers
# Steps to solve the problem.
# - make a new method called total
# - declare a variable to hold the total and set it to 0
# - iterate over the array
# - for each number in the array, add it to the total
# - return the total


# 1. total initial solution

def total(array_of_nums)
  total = 0
  array_of_nums.each do |num|
    total = total + num
  end
  return total
end

# 3. total refactored solution

def total2(array_of_nums)
  return array_of_nums.inject(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of words
# Output: a capitalized sentence with a period and spaces.
# Steps to solve the problem.
# - create a method sentence_maker
# - declare a variable sentence that is an empty string
# - iterate over the array of words
# - for each word in the array, add it to the sentence with a space before it
# - remove the leading space in the sentence
# - add a period to the end of the sentence
# - capitalize the sentence
# - return the sentence


def sentence_maker(array_of_words)
  sentence = ""
  array_of_words.each do |word|
    sentence = sentence + " " + word
  end
  sentence = sentence + "."
  sentence[0] = ""
  sentence = sentence.capitalize

  return sentence
end

# 6. sentence_maker refactored solution

def sentence_maker2(array_of_words)
  return (array_of_words.join(" ").capitalize + ".")
end
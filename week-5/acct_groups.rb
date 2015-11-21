=begin

5.6 Create Accountability Groups 

Pseudocode

Input: A list of people (I'm going to assume an array of strings with the format "Firstname Lastname")
Output: A hash with accountability group names as keys, and arrays containing 4 or 5 names as values

1 - Count the number of people
2 - Figure out how many times I can make groups of 4 and how many people will be left over
	2.1 - Actually establish the number of groups of 4 and 5
	2.2 - create a hash of group names initialized to empty array
3 - Fill each group with people
	3.1 for the number of hashes with five people, add five people to the hash
	3.2 for the number of hashes with four people, add four people to tha hash
5 - Return the hash

=end

# A fake list of cohort members for testing purposes
my_fake_list = ["Mary Jones", "Barack Obama", "Helen Keller", "Sherlock Holmes", "Bob Smith", "Old Yeller", "Huckleberry Finn", "Taylor Swift", "John Anderson", "Captain Kirk", "FakePerson 1", "FakePerson 2", "FakePerson 3", "Darth Vader"]


# Initial Solution. WORKS!!! DOES NOT LOOK PRETTY BUT WORKS GREAT. NO RANDOMNESS.
def groups(array_of_names)

	num_people = array_of_names.length 		#how many people do we have?
	groups_5 = num_people % 4 	#how many groups will have 5
	groups_4 = (num_people - (groups_5 * 5)) / 4 # how many groups will have 4
	total_groups = groups_4 + groups_5 		#how many total groups

	group_hash = Hash.new([])	#new hash initialized to empty arrays
	
	num_group = 0
	index = 0

	groups_5.times do
		people_in_group = []
		5.times do
			people_in_group << array_of_names[index]
			index += 1
		end
		group_hash["Accountability Group #{num_group}"] = people_in_group
		num_group += 1
	end

	groups_4.times do
		people_in_group = []
		4.times do
			people_in_group << array_of_names[index]
			index += 1
		end
		group_hash["Accountability Group #{num_group}"] = people_in_group
		num_group += 1
	end

	return group_hash

end

# REFACTORED SOLUTION

def groups2(array_of_names)
	array_of_names.shuffle! 				#introducing randomness
	num_people = array_of_names.length 		#how many people do we have?
	groups_5 = num_people % 4 				#how many groups will have 5
	groups_4 = (num_people - (groups_5 * 5)) / 4 # how many groups will have 4
	total_groups = groups_4 + groups_5 		#how many total groups

	group_hash = Hash.new([])				#new hash initialized to empty arrays
	
	num_group = 0
	index = 0

	groups_5.times do
		people_in_group = []
		5.times do
			people_in_group << array_of_names[index]
			index += 1
		end
		group_hash["Accountability Group #{num_group}"] = people_in_group
		num_group += 1
	end

	groups_4.times do
		people_in_group = []
		4.times do
			people_in_group << array_of_names[index]
			index += 1
		end
		group_hash["Accountability Group #{num_group}"] = people_in_group
		num_group += 1
	end

	return group_hash

end





# MISCELLANEOUS TESTING.
p groups(my_fake_list)
puts ""
p groups2(my_fake_list)

# REFLECTION
=begin
	

- What was the most interesting and most difficult part of this challenge?

	i

- Do you feel you are improving in your ability to write pseudocode and break the problem down?

	i

- Was your approach for automating this task a good solution? What could have made it even better?

	i

- What data structure did you decide to store the accountability groups in and why?

	A hash in which the keys were the accountability group names "Accountability Group 0" 
	"Accountability Group 1" etc etc and the values were arrays of people's names.
	This made the most sense to me because the output was very understandable:
	a group name, and a list of participant names. 
	I could have just used an array of arrays but I wanted to give the groups unique names,
	not just indices.
	I could have used a hash of strings but even then I think the output would have been 
	less presentable.


- What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

	The first method I learned in refactoring was the array method .shuffle!
	(and its non-destructive counterpart .shuffle) which randomly reorders the items
	in an array. 
	

=end
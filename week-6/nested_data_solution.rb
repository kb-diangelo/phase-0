# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
#p hash[:inner][3]
#p hash[:outer][:inner][3]
#p hash [:outer][:inner]["almost"][3]



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |item|
  if item.is_a? Array
    item.map! {|subitem| subitem + 5}
  else
    item + 5
  end
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


startup_names.map! do |item|
  if item.is_a? Array
    item.map! do |subitem|
      if subitem.is_a? Array
        subitem.map! {|subsubitem| subsubitem << "ly"}
      else
        subitem << "ly"
      end
    end
  else
    item << "ly"
  end
end

p startup_names

=begin

* What are some general rules you can apply to nested arrays?

	To access a value in a nested array you can chain indices together in the 
	form array[index][subararry index][subsubarray index]. Nested arrays 
	can be iterated over just like normal arrays but with added depth (see below).

* What are some ways you can iterate over nested arrays?

	You can use enumerable methods like .each or .map(!) but you may have to add
	a statement checking whether the item inside the array is another array or
	some other non-enumerable item. It helps to know what your array looks like
	before you try to iterate over it. 

* Did you find any good new methods to implement or did you re-use 
	one you were already familiar with? What was it and why did you
	decide that was a good option?
	
	We used .map! which was not a new method to us, but we did learn that 
	.collect! is a synonym for .map!. .map! was a good choice because it 
	changes an array in-place and we needed a destructive method.
	We also used .is_a? (a synonym for .kind_of?) which returns true if 
	the object is an instance of the class provided or of a subclass. This
	method was not new to us but it was very useful.
	
=end
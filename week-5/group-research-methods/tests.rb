i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 2, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 5, "Annabelle" => 0}


# Person 3
def my_array_sorting_method(source)
	return source.sort {|item1, item2| item1.to_s <=> item2.to_s}
end

def my_hash_sorting_method(source)
	return source.sort_by {|key, value| value}
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

puts my_hash_sorting_method(my_family_pets_ages)
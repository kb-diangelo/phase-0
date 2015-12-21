# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?

    #This doesn't quite work yet.
    has_item = false
    @contents.each do |silverware|
      if silverware.type == item.type
        has_item = true
      end
    end
    
    raise Exception.new("You don't have that item to remove!") unless has_item
    
    
  #  @contents.each do |silverware|
  #   if silverware.type != item.type
  #     raise Exception.new("You don't have that #{item.type} to remove!")
  #    end
  #  end
    
     @contents.delete(item)
  end
  

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = []
    raise Exception.new("Your drawer is not               actually empty") unless @contents.empty?
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end

class Silverware
  attr_accessor :type
  attr_reader :clean
# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end
  
  def clean_silverware
    @clean = true
    raise Exception.new("Your silverware is not           actually clean!") unless @clean == true
  end
  
end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
# raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.

silverware_drawer.add_item(spoon = Silverware.new("spoon"))


have_spoon = false

silverware_drawer.contents.each do |silverware|
  if silverware.type = "spoon"
    have_spoon = true
  end
end

raise Exception.new("You don't have a spoon to remove") if have_spoon != true

# raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?("spoon")

silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?

spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE
puts "----------------------"
silverware_drawer.dump
#silverware_drawer.view_contents
fork = Silverware.new('fork')
silverware_drawer.add_item(fork)
# silverware_drawer.view_contents
fork2 = Silverware.new('fork')
silverware_drawer.add_item(fork2)
#silverware_drawer.view_contents
spoon = Silverware.new('spoon')
silverware_drawer.add_item(spoon)
# silverware_drawer.view_contents
silverware_drawer.remove_item(fork)
silverware_drawer.view_contents
#silverware_drawer.remove_item(knife)

# Reflection

=begin

* What concepts did you review in this challenge?

I reviewed debugging some basic, common problems in Ruby syntax and 
how classes in Ruby work.

* What is still confusing to you about Ruby?

This didn't really come up in this challenge but I know I could use
more practice about iterating over nested data structures.

* What are you going to study to get more prepared for Phase 1?

Nested data structures.
  
=end
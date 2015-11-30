# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [3] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #1. Generate a number 0-4 (for b, i, n, g, o)
  #2. Generate a number 1-100
  #3. Push the letter and the number to an array
  #4. Return that array

# Check the called column for the number called.
  #1. Recieve the array with the number and letter from the generator method
  #2. For the first number in the array (the letter),
  #2.1 go through each array in the board and access the #th index
  #2.2 check to see if that value is equal to the 2nd number in the recieved array (the number)

# If the number is in the column, replace with an 'x'
  #1. If it is, overwrite that number with an X

# Display a column to the console
  #1. Take in a letter b-o as an argument
  #2. Find the index 0-4 that corresponds to that letter
  #2. Iterate over the arrays and print out the indexth value 
  # => with newlines in between

# Display the board to the console (prettily)
  #1. Print each row to the console, followed by a newline

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    call = []
    letter = rand(4)
    number = rand(100)
    call << letter
    call << number
    case letter
    when 0
      puts "The call is: B-#{number}!"
      letter = "B"
    when 1
      puts "The call is: I-#{number}!"
      letter = "I"
    when 2
      puts "The call is: N-#{number}!"
      letter = "N"
    when 3
      puts "The call is: G-#{number}!"
      letter = "G"
    when 4
      puts "The call is: O-#{number}!"
      letter = "O"
    end
    check(call)
  end

  def check(bingo_call)
    puts ".... Checking!"
    
    case bingo_call[0].upcase
    when "B"
      letter = 0
    when "I"
      letter = 1
    when "N" 
      letter = 2
    when "G"
      letter = 3
    when "O" 
      letter = 4
    end

    number = bingo_call[1]

    @bingo_board.each do |row|
      if row[letter] == number
        row[letter] = "X"
      end
    end

    display_board
  end

  def display_column(letter) # I am only including this method because it was in the pseudocode
    case letter.upcase
    when "B"
      num = 0
    when "I"
      num = 1
    when "N"
      num = 2
    when "G"
      num = 3
    when "O"
      num = 4
    end

    puts ("Row " + letter.upcase + "!").center(25)
    @bingo_board.each do |row|
      puts row[num].to_s.center(25)
    end
  end

  def display_board
    @bingo_board.each do |row|
      puts row.to_s.center(25)
    end
  end

end

# Refactored Solution

class BingoBoard2

  def initialize(board)
    @bingo_board = board
    @bingo_hash = Hash.new()
    @bingo_hash[0] = "B"
    @bingo_hash[1] = "I"
    @bingo_hash[2] = "N"
    @bingo_hash[3] = "G"
    @bingo_hash[4] = "0"
  end

  def call
    letter = @bingo_hash[rand(4)]
    number = rand(100)
    call = [letter, number]
    puts "The call is: #{letter}-#{number}!"
    check(call)
  end

  def check(bingo_call) #this method takes an array with a letter and a number if you want to call it 
    puts ".... Checking!"
    letter = @bingo_hash.key(bingo_call[0])
    number = bingo_call[1]
    
    @bingo_board.map! { |row| row[letter] = "X" if row[letter] == number }

    display_board
  end

  def display_column(letter) # I am only including this method because it was in the pseudocode
    puts ("Row " + letter.upcase + "!").center(25)
    @bingo_board.each { |row| puts row[@bingo_hash.key(letter.upcase)].to_s.center(25) }
  end

  def display_board
    @bingo_board.each { |row| puts row.to_s.center(25) }
  end

end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

bingo = BingoBoard2.new(board)
bingo.call
bingo.call
bingo.check(["I", 70])

=begin
* How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#Reflection

  This challenge was not too difficult to pseudocode. The hardest part was making sure that the
  check method was getting information from the call method. I did this by having check just call
  call. I could have also done this by saving the result of call in an instance variable and
  passing that value to check. My pseduocode is kind of free-form. I definitely need to brush up
  on best practices. 

* What are the benefits of using a class for this challenge?

  The benefits of using a class for this challenge is that it allows us to bundle a bunch of 
  methods together. We are able to use instance variables to pass values from one method to
  another. 

* How can you access coordinates in a nested array?

  You can access coordinates in a nested array by chaining indices together like such:
  array[index][subarray's index][subsubarray's index]. 

* What methods did you use to access and modify the array?

  To just access the array without modifying it, I used #each. I also used #each to modify the
  array in my initial solution but when I refactored I remembered it's better to use #map! when 
  you're changing an array in-place.

* Give an example of a new method you learned while reviewing the Ruby docs. 
* Based on what you see in the docs, what purpose does it serve, and how is it called?

  #any? is a method that passes every element of the collection to a block. If it returns anything
  other than false or nil, #any? returns true. Otherwise it returns false. This would be a good
  method to use when you're trying to find if a collection contains any instances of a certain value,
  a certain object, or any value that meets a certain condition. 

* How did you determine what should be an instance variable versus a local variable?

  If a value had to be passed from method to method, such as the state of the board or the hash
  mapping B-I-N-G-O to 0-1-2-3-4, I made it an instance variable. Everything that was used in just
  one method was a local variable.

* What do you feel is most improved in your refactored solution?

  Instead of having multiple case statements, I made a hash mapping B-I-N-G-O to 0-1-2-3-4 and 
  referred to it when having to turn a letter into an index and vice versa.

=end
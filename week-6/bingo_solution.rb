# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [4] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#   Choose a random letter in b, i, n, g, o
#   Chooese a random number between 1-100.
#   Print the random letter and random number

# Check the called column for the number called.
  #fill in the outline here
#Determine the index position of the letters (B,I,N,G,0)
#Determine if the called number is a match in the corresponding column.

# If the number is in the column, replace with an 'x'
#If the number is a match on a board, replace the value of the given position with an X


# Display the board to the console (prettily)
  #fill in the outline here
#Iterate over the board, printing each of the nested arrays, including a new line or two and separating each number with a tab.

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    
  end
  
  def call
    @letters = ["B", "I", "N", "G", "O"]
    @bingo_letter = @letters.sample
    @bingo_number = rand(1..100)
    @bingo_column = @letters.index(@bingo_letter)
     "#{@bingo_letter}:#{@bingo_number.to_s}"
  end
  
  def check_board
    @bingo_board.each do |array|
      if array.is_a?(Array)
        if array[@bingo_column] == @bingo_number
          array[@bingo_column] = "X"
        end
     end
    end
  end
        
   
  def print_board
    print "Let's play Bingo!!!"
    2.times {print "\n"}
    @letters.each {|letter| print letter + "\t"}
    2.times { print "\n" }
    
    @bingo_board.each do |array|
      array.each {|num| print num.to_s + "\t"}
       3.times { print "\n" }
    end
  end

end

# Refactored Solution





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check_board
new_game.print_board


#Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
-Pseudocoding this challenge was difficult only because of the magnitude of the challenge. Up to now, pseudocoding was relatively straightforward because the challenges weren't as long as this one.

What are the benefits of using a class for this challenge?
-Using a class for this challenge allows us to call different methods on the board without having to create it every time.

How can you access coordinates in a nested array?
-Accessing coordinates in a nested array is simple if you take your time scanning the array from left to right. You first target the index of the parent array, then the specific element. 

What methods did you use to access and modify the array?
-I mainly used the each method to iterate over the array. The other methods include the index method, random method, and times method.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
-I didn't use any new methods, but I did have to look up how to put a newline as well as a tab in order to get the spacing for my board. The newline basically makes a new line-- I used two new lines to get it spaced. The tab basically inserts a space that has the width equal to a tab on the keyboard.

How did you determine what should be an instance variable versus a local variable?
-For this challenge, I had to use only instance variables because I needed access to them for my various methods. However, I would've used a local variable if I needed something only for the specific method I was working with.

What do you feel is most improved in your refactored solution?
-I sort of forgot about having to do a refactored solution as I was constantly tweaking and modifying my intitial code. Basically, my intitial solution isn't actually the original, because in a sense I didn't have an original solution, just a solution that had a lot of adjustments and refactoring in the process. :/
=end
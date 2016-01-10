# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# Input is a positive integer
# What is the output? (i.e. What should the code return?)
# Output is a comma-separated integer as a string.
# What are the steps needed to solve the problem?
# Convert integer into string
# Determine number of characters, and if it is 3 or fewer digits, return as is.
# If it has 4 or more digits, insert comma after the 3rd, 6th, 9th, etc position (counting from the right)



# 1. Initial Solution
def separate_comma(num)
  num = num.to_s
  if num.length <= 3
    return num
  elsif (num.length > 3) && (num.length < 7)
    num.insert(-4, ",")
  elsif (num.length > 6) && (num.length < 10)
    num = num.to_s.reverse
    (num[0..2] + "," + num[3..5] + "," + num[6..-1]).reverse
  else (num.length > 9) && (num.length < 13)
    num = num.to_s.reverse
    (num[0..2] + "," + num[3..5] + "," + num[6..8] + "," +   num[9..-1]).reverse
  end
end
p separate_comma(10000000000)





# 2. Refactored Solution

def separate_comma(num)
  num = num.to_s
  if num.length <= 3
    return num
  elsif (num.length > 3) && (num.length < 7)
    num.insert(-4, ",")
  elsif (num.length > 6) && (num.length < 10)
    num.insert(-4, ",")
    num.insert(-8, ",")
  end
end


# 3. Reflection
=begin
	
What was your process for breaking the problem down? What different approaches did you consider?
-My first thought was using flow control in order to work with integers of various lengths.
If I had an integer with 3 digits, then we would simply return the integer as is because there is no need for a comma.
Then, for integers with 4-6 digits, I would need to find a way to insert one comma after the -4 index.

Was your pseudocode effective in helping you build a successful initial solution?
-Yes, my pseudocode was helpful in appraoching this challenge step by step.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
-The insert method for arrays was exactly what I needed in order to place commas in the integers. There's probably a host of other methods I couldve used
to further refactor my solution, but the insert method certainly was useful in tightening my intitial solution. I definitely need more practice with using 
the documentation to find appropriate methods. As of now, the docs can be a bit intimidating and hard to understand.

How did you initially iterate through the data structure?
-I broke down the code with flow control in order to identify which integers first needed to have commas,
and then used the insert method in order to place those commas where I wanted them.


Do you feel your refactored solution is more readable than your initial solution? Why? 
-My refactored solution is certainly more readable and accessible than the wordy initial solution;
the insert method is easier to understand than trying to follow all the "+"s of the initial solution.
=end
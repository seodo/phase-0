# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [1] hours on this challenge.

# Pseudocode

# Input:an integer that will be the correct answer
# Output:either high, low, or correct. For the solved? method, we need to ouput whether the game is completed.
# Steps:
#Initialize GuessingGame
#Raise argument if the input isnt an integer
#Create a guess method, which will output whether the users guess is high, low, or correct
#Create a solved? method, which will output whether the user has guessed correctly or not


# Initial Solution

class GuessingGame
def initialize(answer)
  @answer = answer
  raise ArgumentError, "Please input a number" if answer < 1
end


def guess(guess)
  @guess = guess
  if guess > @answer
    return :high
  elsif guess < @answer
    return :low
  else 
    return :correct
  end
end
   def solved?
   if @guess == @answer
     return true
   else
     return false
   end
 end
end
=begin
# Reflection
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
-Instance variables and method behave like real-world objects in that they store information that can be called upon or used in 
later situations. 

When should you use instance variables? What do they do for you?
-Instance variables should be used when we need to call those variables across different methods. That way, we can set the value of
instance variables once and be able to recycle them whenever we need. For this challenge, we used instance variables
when we passed arguments for the "answer" and "guess", which allowed us to incorporate those objects
in other methods like the solved? method.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
-Flow control alllows us to manipulate the "path" our code takes by creating various conditions which must be met. For this challenge, 
I used flow control in order to determine what to do if the guess was correct vs incorrect.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
-I think the use of symbols in this challenge was for practical reasons: they are faster to access and process for our programs.
=end
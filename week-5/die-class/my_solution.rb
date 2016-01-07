# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: an integer of sides
# Output: returns random number between 1 and # of sides
# Steps:
# Define a class called Die
# Define the initialize method that will take a number as an argument
# 	Set the number of sides as an instance variable for future use
# 	Raise argument error if sides is less than 1
# Define a method called sides which will return number of sides
# Define a method called roll which will return a random integer between 1 and number of sides	
#
#


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides.to_i
    unless sides >= 1
    	raise ArgumentError.new("Argument is not 1 or greater")
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides.to_i
    if sides < 1
    	raise ArgumentError.new("Argument is not 1 or greater")
    end
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..sides)
  end
end




=begin
# 4. Reflection
What is an ArgumentError and why would you use one?
-An ArgumentError raises errors if the inputted argument does not satisfy the parameters.
For our challenge, I raised an ArgumentError when the input was less than 1. Obviously, since
we are dealing with whole integers, we need to have 1 or more sides.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
-I learned to use the random method, which was exactly what I needed for the roll method. 
The only trouble I had using the random method stemmed from assuming all dice would have only 6 sides.
Once I realized that it could have more than 6 sides, I was able to modify my code and have the rspec test pass.

What is a Ruby class?
-A ruby class is basically a blueprint under which all instances/objects of the class fall. A ruby class also happens
to be an instance/object of its superclass, Class. When we create a new class, an object of type Class is initialized
and assigned to a global constant. In our example, this global constant was Die.

Why would you use a Ruby class?
-Ruby classes are useful when we want to give methods for our data or have multiple instance of our data.

What is the difference between a local variable and an instance variable?
-Local variables are variables that are defined in a method and are not available outside the method.
They begin with a lowercase letter or an underscore.
-Instance variables are available across methods for any instance or object.

Where can an instance variable be used?
-Instance variables can be used across class methods, unlike local variables which are avilable in their respective methods.
=end 
# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: an integer of symbols
# Output: returns random element of array (for random method) as well as number of elements in array.
# Steps:
# Define a class called Die
# Define the initialize method that will take an array as an argument
#   Set the number of sides as an instance variable for future use
#   Raise argument error if length of labels is less than 1
# Define a method called sides which will return number of sides
# Define a method called roll which will return a random element in the array. 
#
#


# 1. Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    unless labels.length >= 1
      raise ArgumentError.new("Argument is not 1 or greater")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample
  end
end





# 3. Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
    unless labels.length >= 1
      raise ArgumentError.new("Argument is not 1 or greater")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample
  end
end
#Reflection
=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
-The main difference is that the first Die method took integers as arguments whereas the new die method takes strings as arguments. In terms of logic, both methods required the same steps and approach.
What does this exercise teach you about making code that is easily changeable or modifiable? 
-I guess this is why refactoring is important: already simple and concise code will make modifications a bit easier to do, as opposed to having cumbersome and messy code which would make it that much more difficult.

What new methods did you learn when working on this challenge, if any?
-I learned to use the sample method on arrays, which basically picks a random element and spits it out for us. It was the perfect method for this challenge.
What concepts about classes were you able to solidify in this challenge?
-With practice I am slowly beginning the grasp the concept of instance variables and how they differ from local or global variables.
=end
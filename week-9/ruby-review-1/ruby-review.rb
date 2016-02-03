# I worked on this challenge by myself.
# This challenge took me [1] hours.


# Pseudocode
# Define a method to take in an array of numbers.
# Iterate over the array.
# If element is a multiple of 3, set that element equal to "Fizz"
# If element is a multiple of 5, set that element equal to "Buzz"
# If element is a multiple of 15, set that element equal to "FizzBuzz"


# Initial Solution

# def super_fizzbuzz(array)
#   array.each do |number| 
#     if (number%15 == 0)
#       number = "FizzBuzz"
#       p number
#     elsif (number%5 == 0)
#       number = "Buzz"
#       p number
#     elsif (number%3 == 0)
#       number = "Fizz"
#       p number
#     else
#      p number
#     end
    
#    end

# end 


 # super_fizzbuzz([1,2,3,4,5,11,15,20,30])


# Refactored Solution

def super_fizzbuzz(array)
  array.map! do |number| 
    if (number%15 == 0)
      number = "FizzBuzz"
    elsif (number%5 == 0)
      number = "Buzz"
    elsif (number%3 == 0)
      number = "Fizz"
    else
      number
    end
   end
p array
end 




# Reflection
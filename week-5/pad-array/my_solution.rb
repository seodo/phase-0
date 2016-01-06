# Pad an Array

# I worked on this challenge with Andrew Kim

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode  .

# What is the input?
#Input is array with positive integers, min_size of the array, and the value which we will pad with.
# What is the output? (i.e. What should the code return?)
#An array with a set number of elements including the necessary padding.
# What are the steps needed to solve the problem?
#Qualify our argument for array size. If min_size is less than the inputted array, we return the array as it.
# If not, then we insert the value a number of times equal to the difference between the min_size and array.


# 1. Initial Solution
=begin 
def pad!(array, min_size, value = nil) #destructive
  n=0
  if array.length > min_size
    p array
  else
    counter=min_size-array.length
  until n=counter
    array.push(value)
    n+=1
   
  end
  end
   p array
end

# def pad!(array, min_size, value = nil) #destructive


#   until min_size <= array.length

#     array.push(value)
   
#   end


# end
=end


  

# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  work=array.clone
if work.length>=min_size
  return work
else
  until min_size <= work.length

  work.push(value)

  end
  return work
end

end

def pad!(array, min_size, value = nil) #destructive

if array.length>=min_size
  return array
else
  until min_size <= array.length

  array.push(value)

  end
  return array
end

end





# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
-My partner and I successfully broke down the challenge into small steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
-The pseudocode was an invaluable tool to have for solving this challenge, but it wasn't easy by an means.
We spent a good amount of time playing around with our code, using different methods.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
-We went straight into writing our code without discussing the difference between destructive and non-destructive methods.
So we ended up solving for the destructive method first without intending to.

When you refactored, did you find any existing methods in Ruby to clean up your code?
-We found the clone method, which was exactly what we needed for the non-destructive method.

How readable is your solution? Did you and your pair choose descriptive variable names?
-Our code is very accessible and easy to follow. Our variable names are also simple and easy to understand.

What is the difference between destructive and non-destructive methods in your own words?
- Destructive methods take the original object, modifies it and returns it as the modified version.
-Non-destrutive methods take the original object, modifies it, and returns it without changing the original object.
=end
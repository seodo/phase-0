# Calculate the mode Pairing Challenge

# I worked on this challenge with David Valencia ]

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?  An array of numbers or strings.

# What is the output? (i.e. What should the code return?)

#An array of the most frequent values

# What are the steps needed to solve the problem?

#Convert array into database (hash)

#Count every instance of element (key) within array and translate occurance to count (value) within database.

#Compare counts to each other and return "mode" elements in a new array


# 1. Initial Solution
def mode(array)
  mode_hash = Hash.new
  array.each {|x| mode_hash[x] = 0}
  mode_hash.each do |k,v| 
    mode_hash[k] = array.count(k)
  end 
  new_array = []
  mode_hash.each do |k, v|
    if v == mode_hash.values.max; new_array << k
    end
  end
  return new_array
end

# 3. Refactored Solution
def mode(array)
  mode_hash = Hash.new
  array.each {|x| mode_hash[x] = 0}
  mode_hash.each do |element, frequency| 
    mode_hash[element] = array.count(element)
  end 
  new_array = []
  mode_hash.each do |element, frequency|
    if frequency == mode_hash.values.max; new_array << element
    end
  end
  return new_array
end


=begin
# 4. Reflection
Which data structure did you and your pair decide to implement and why?
- We decided to implement a hash in order to pair up each element with its frequency. Doing this
would allow us to iterate over the new hash to select the pair with the greatest value (frequency).

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
-It was more or less the same in terms of being able to translate the pseudocode into working code. Breaking this particular
challenge into pseudocode was relatively straightforward, but the difficulty was translating it into methods.
 
What issues/successes did you run into when translating your pseudocode to code?
- We were able to create a new hash to store the data from our array, but we got stuck when
we tried to iterate over the hash in order to get the key-value pair with the greatest value.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
- To iterate through our code, we used the .values method in order to select all the values (frequencies) in our hash.
Then, in order to select the largest values (the "greatest" frequency), we used the .max method. 
We couldn't find any other methods that we could use to refactor our code.
=end
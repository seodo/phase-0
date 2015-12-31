# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Peter Stratoudakis.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array
# Output: the sum of the integers in given array
# Steps to solve the problem.
# Create array of numbers.
# Make a method that takes the array as an argument
# Have the method add the numbers in the array

# 1. total initial solution
=begin
def total(array_total)
sum = 0
array_total.each { |x| sum+=x }
end
=end


# 3. total refactored solution
def total(array)
array.inject{|sum,x| sum + x }
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of strings
# Output: a sentence of the strings
# Steps to solve the problem.
# Create an array of strings
# Make a method that takes the array as an argument
# Include spacing between the strings, capitalize the first word, 
# and end the sentence with a period.
#



# 5. sentence_maker initial solution
def sentence_maker(array)
	new_array = array.join(" ").capitalize + "."
	
end


# 6. sentence_maker refactored solution
#array_3.map { |k| "#{k}" }.join(" ") + "."

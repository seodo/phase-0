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
	if num.length <= 3
		return num
	end
	index = -4
	array = []
	array = num.to_s.split("")
	while 




# 2. Refactored Solution




# 3. Reflection
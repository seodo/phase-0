# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# The input is a postive integer
# What is the output? (i.e. What should the code return?)
# The output is a comma-separated integer as a string
# What are the steps needed to solve the problem?
# 1) Convert the integer into string.
# 1) Determine how many characters the input has.
# If the number has less than 4 digits, then no comma is necessary. (like 1, 10, or 100)
# If the number has 4 or more digits (like 1000 or 10000), put comma.
# 2) Figure out how to put a comma after every 3rd, 6th, 9th (positions of multiples of 3)
# character.
	
#


# 1. Initial Solution
def separate_comma(num)
	num = num.to_s
	if num.length < 4
		return num
	end
	while num.length >= 4
		index = -4
		array = Array.new
		array = num.to_s.split("").to_a
		array.insert(index, ",")
		index *= 2
	end
	array
end 






# 2. Refactored Solution




# 3. Reflection
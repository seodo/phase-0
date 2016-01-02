
# Leap Years

# I worked on this challenge with Carl Conroy.


# Your Solution Below

def leap_year?(num)

	if num % 4 == 0 && num % 100 != 0
	 	return true
	elsif num % 400 == 0
		 return true
	elsif num % 4 == 0 && num % 100  == 0 && num % 400 != 0 
	 	return false
	else num % 4 != 0
		return false
	end
end


# Calculate a Grade

# I worked on this challenge with Carl.


# Your Solution Below
=begin
def get-grade(num)
	if num >= 90 
		return "A"
	elsif num >= 80 && num < 90
		return "B"
	elsif num >= 70 && num < 80
		return "C"
	elsif num
=end 

def get_grade(num)
case num

	when 90..100 then return "A"
	when 80..89 then return "B"
	when 70..79 then return "C"
	when 60..69 then return "D"
	when 0..59 then return "F"
	else
		"please enter a number"
	end
end
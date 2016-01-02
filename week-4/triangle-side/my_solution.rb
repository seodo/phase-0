# I worked on this challenge with Carl Conroy.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a == 0 || b == 0 || c == 0
  	return false
  elsif a == b && a == c && c == b
    return true
  elsif a == b || a == c || b == c
    return true
  elsif a**2 + b**2 == c**2 || b**2 + c**2 == a**2 || a**2 + c**2 == b**2
    return true
  elsif a + b < c || b + c < a || a + c < b
    return false

  end 

end



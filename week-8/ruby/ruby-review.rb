# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [1] hours.

# Pseudocode
#split string into individual words
#call the reverse method on each word.
# Join each reversed word into a new string


def reverse_words(string)
  words = string.split(" ")
  reverse = []
  
  words.each do |word|
    reverse << word.reverse
  end
  return reverse.join(" ")  
end

puts reverse_words("this is a string")

# Reflection
=begin
What concepts did you review or learn in this challenge?
- I reviewed how to iterate over objects in Ruby. More specifically, I had to iterate over the array of words in order to push them into a new array.
What is still confusing to you about Ruby?
-Not so much confused as I am intimidated by the fact that there are an infinite number of ways to do one thing.
What are you going to study to get more prepared for Phase 1?
-I will keep practicing Ruby by doing challenges.

=end
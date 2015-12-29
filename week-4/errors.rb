# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#   puts "What's there to hate about #{thing}?"
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter expected "end" but got something else.
# 5. Where is the error in the code?
#The error occurs at the last line (170).
# 6. Why did the interpreter give you this error?
# The method was not closed properly with an "end" after the puts section. This method requires two ends for the while loop and the entire method.
# This would work:
# def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
# end
#end
# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# 35
# 2. What is the type of error message?
# This is a name error.
# 3. What additional information does the interpreter provide about this type of error?
# Undefined local variable or method.
# 4. Where is the error in the code?
# The error is the entire line as the interpreter expected a variable or method.
# 5. Why did the interpreter give you this error?
# This interpreter give this error because it doesn't recognize the name. To fix this error, 
# we could make a method out of the name, like:
# def south_park
# 	end

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 58
# 2. What is the type of error message?
# NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# Undefined method 'cartman'
# 4. Where is the error in the code?
# The interpreter found that the method cartman was undefined.
# 5. Why did the interpreter give you this error?
# The interpeter gave this error because the method was never defined, so it has no way of executing it.

# --- error -------------------------------------------------------

#def cartmans_phrase
 # puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 73
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The error occurs when the parameter is put into the method, because the method wasn't made to accept parameters.
# 5. Why did the interpreter give you this error?
#The interpreter gave this error because there shouldn't be any arguments for the method.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says

# 1. What is the line number where the error occurs?
# 92
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# The error occurs when the program tries to run "cartman_says" without an argument. This method calls for an argument to be executed.
# 5. Why did the interpreter give you this error?
#This error occurred because there was no argument given after "cartman_says". To fix this,
#we could put cartman_says(You suck!).



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 114, 118
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# Wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# The interpreter found the error when we passed on only one argument instead of the two parameters the method accepts.
# 5. Why did the interpreter give you this error?
# The interpreter is expecting two arguments and only received one. To fix this, we can try:
# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle!')

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 134
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum 
# 4. Where is the error in the code?
# Assuming the intention was to have the string "Respect my authoritary" printed out 5 times,
# the error occurred because the "5" and the string were out of place.
# 5. Why did the interpreter give you this error?
# The code is basically telling Ruby that we want "respect my authoritay" sets of 5, which obviously doesn't make any sense.
# To fix this and to let the interpreter know that we want 5 sets of the string, we should type:
# "Respect my authoritay!" * 5

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 152
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# "divided by 0"
# 4. Where is the error in the code?
# The error occurs in the part of the code that says "20/0"
# 5. Why did the interpreter give you this error?
# The interpreter gave this error because "20/0" is impossible to compute.
# If we meant we have 20 pieces left, we can just write amount_of_kfc_left = 20

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 169
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
# "cannot load such file"
# 4. Where is the error in the code?
# The interpreter found the code because it couldn't locate the specified file.
# 5. Why did the interpreter give you this error?
# The intrepreter could not find the file in my directories. To fix this,
# we would need to create the file in our directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
=begin

Which error was the most difficult to read?
-It wasn't the most difficult per se, but the one with an argument error (1 for 0) caught me off
guard as it was completely new to me. I had to google it to understand what it meant.

How did you figure out what the issue with the error was?
- I had a hunch about what the 1 and 0 meant: the method didn't call for any arguments, but the code tried to pass one
so my guess was that the "1 for 0" meant it received 1 argument where it expected 0 arguments. I was able
to confirm this by googling it.

Were you able to determine why each error message happened based on the code? 
- For the most part, the error messages were enough to let me know what was going on.

When you encounter errors in your future code, what process will you follow to help you debug?
- I'd start by reading what the error is, and if I can't figure it out on the spot, then I'd 
probably google it or refer to Ruby Documentation.
=end 
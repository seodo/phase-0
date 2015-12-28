What does puts do?
-Puts writes the output and also adds a newline at the end, while print just puts the output.
What is an integer? What is a float?
-An integer is a number without a decimal point, like 1, 2, and 100, while a float is a number with decimal points like 1.3 and 100.004.
What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
-When your computer computes something like 9/2, it'll round down to the next integer. For example, 9/2 will yield 4 because the computer will round down 4.5 to 4. Chris Pine's book had a good example with movie tickets: if a movie ticket costs $2 and you have $9, how many movie tickets can you buy? Just 4. You can't buy half a movie ticket, so you "round down" to 4 tickets. 

Mini-challenges
1. Hours in a year
puts 24 * 365
2. Minutes in a decade
puts 60 * 24 * (365 * 10)

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
-Doing arithmetic is pretty straightforward with Ruby with the exception of division. With division, Ruby will round down if the answer has a decimal. For example, 9/2 will yield 4 instead of 4.5 because Ruby rounds down.
What is the difference between integers and floats?
-An integer is a number without a decimal point, like 1, 2, and 100, while a float is a number with decimal points like 1.3 and 100.004.
What is the difference between integer and float division?
-Integer division will yield an integer answer. For example, 9/2 will yield 4 because Ruby rounds down to the integer. However, with float division, Ruby will yield a float. To do this, you can change either value of equation to a float by adding ".0". For example, to get a float answer for 9/2, you would change either the 9 or 2 by adding ".0", ending up with 9.0/2 = 4.5 or 9/2.0 = 4.5
What are strings? Why and when would you use them?
-Strings are groups of letters, punctuations, digits and symbols.
What are local variables? Why and when would you use them?
-Local variables are variables that start with a lower case letter or underscore.
How was this challenge? Did you get a good review of some of the basics?
-This challenge got me up to speed with some of the Ruby basics. It was straightforward and informative.

(defining-variables.rb)
(simple-string.rb)
(basic-math.rb)
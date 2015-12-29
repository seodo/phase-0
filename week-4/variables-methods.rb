puts 'Hey, what\'s your first name?'
first = gets.chomp
puts 'What\'s your middle name?'
middle = gets.chomp
puts 'What about your last?'
last = gets.chomp
puts 'Thanks,' + ' ' + first + ' ' + middle + ' ' + last + '!' 

puts 'What\'s your favorite number?'
number = gets.chomp
bigger_number = number.to_i + 1
puts 'You know... ' + number + ' is good, but ' + bigger_number.to_s + ' is better.'   

=begin 
How do you define a local variable?

-Local variables start with lower case letters, underscores, or numbers, followed by an equal sign, and ending with the value.

How do you define a method?

-A method, in layman terms, is the verb to the noun (object in Ruby terms). 
To create a method we type "def" followed by the name of the method. 
In the next line(s) we have the body of the method which tells Ruby what to do with the arguments.
The last line is "end" which closes and completes the method.

What is the difference between a local variable and a method?

-A local variable stores information whereas a method does a particular action with local variables. 

How do you run a ruby program from the command line?

-To run a ruby program from the command line, you type in: ruby file_name.rb

How do you run an RSpec file from the command line?

-To run an RSpec file from the command line, type in: rspec file_name.rspec.rb

What was confusing about this material? What made sense?

-Chapters 5 and 6 were pretty straightforward and easy to understand.

4.3.1 Solution
https://github.com/seodo/phase_0/blob/master/week_4/address/my_solution.rb

4.3.2 Solution
https://github.com/seodo/phase_0/blob/master/week_4/address/my_solution.rb


=end 
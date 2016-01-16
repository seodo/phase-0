# Class Warfare, Validate a Credit Card Number

# I worked on this challenge Lydia Nash
# I spent [1.5] hours on this challenge.

# Pseudocode
# Input: 16 digit number
# Output: true or false
# Steps:
#  METHOD #1: 
  #  convert the number into a string, initialize the number length (raise argument error if not 16 digits)
#  METHOD #2:
  #  put the numbers in array
  #  double every other digit
  #  split numbers greater than 9 into two numbers
  #  sum all digits
#  METHOD #3:
  #  check if the remainder is divisible by 10, if so print true, otherwise false


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits


# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number.to_s
#     raise ArgumentError.new("Wrong number of digits, please enter exactly 16") if @card_number.length != 16
#   end

#   def double
#     @split_card = @card_number.split(//).map!
    
#     dog = @split_card.map.with_index { |value, index| index % 2 != 0? value: value.to_i * 2 }
    
#     cat = dog.join.split(//).map { |digit| digit.to_i }

#     @sum = 0
#     cat.each {|x| @sum += x}
#   end 
  
#   def check
#     if @sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
  
# end





class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s.split(//)
    raise ArgumentError.new("Wrong number of digits, please enter exactly 16") if @card_number.length != 16
  end

  def double
   
    
    @double = @card_number.map.with_index { |value, index| index % 2 != 0? value: value.to_i * 2 }
    
    @doubled_array = @double.join.split(//).map { |digit| digit.to_i }
  
    @sum = 0
    @doubled_array.each {|x| @sum += x}
  end
  
  def check_card
  	double
    @sum%10 == 0
  end
  
end

# Reflection
=begin 
What was the most difficult part of this challenge for you and your pair?
-The most difficult part was not so much the logic of the process, but writing the code;
we got stuck a couple of times that were due to small errors such as multiplying the value
by 2 (we forgot to convert the strings into integers.)

What new methods did you find to help you when you refactored?
- I learned about the map.with_index method which helped us to iterate over objects based on their index.

What concepts or learnings were you able to solidify in this challenge?
-Using instance variables and creating classes is becoming easier with practice.
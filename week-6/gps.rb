# Your Names
# 1) Dong Wook Seo (John)
# 2) Cody Kendall

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
 library = {"cookie" => 1, "cake" =>  5, "pie" => 7} 
 

unless library.include?(item_to_make) 
 raise ArgumentError.new("#{item_to_make} is not a valid input") end
 
 
 serving_size = library[item_to_make]
 remaining_ingredients = num_of_ingredients % serving_size

 output = "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
 
 
 puts remaining_ingredients.zero? ?  output :  output + " you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: "
 while remaining_ingredients > 0
   if remaining_ingredients >= 5
     puts "we could make a cake"
   else
     puts "lets make #{remaining_ingredients} cookies"
   end
   remaining_ingredients %= remaining_ingredients
 end
end

# p serving_size_calc("pie", 7)
# #p serving_size_calc("pie", 19)
# # serving_size_calc("cake", 5)
# # p serving_size_calc("cake", 7)
#  p serving_size_calc("cookie", 1)
# serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)
=begin
Reflection
What did you learn about making code readable by working on this challenge?
Making code readable is essential to making good code, especially when it comes to having others
read our code and understanding it. There are literally infinite ways to do one thing, but not all of
  those ways are ideal or efficient.

Did you learn any new methods? What did you learn about them?
-No, all the methods we used for this challenge were ones I already knew.

What did you learn about accessing data in hashes? 
-Like the methods, I didn't anything new about data in hashes, but the practice I got
with hashes was important to refresh my knowledge about them.

What concepts were solidified when working through this challenge?
-Writing readable and simple code is an art that requires tons of practice.

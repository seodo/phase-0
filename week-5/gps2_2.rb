# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# define our new list

#   [fill in any steps here]
#   set default quantity
#   print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]


# def create_list(items)
#   hash_list = Hash.new(0)
#   list_arr = items.split(" ")
#   list_arr.each do |x|
#     hash_list[x] = 1
#   end
#   return hash_list
# end

# hash_list = create_list(sample)
# p hash_list
# # Method to add an item to a list
# # input: item name and optional quantity
# # steps:
# # ask for item name
# # ask for quantity
# # move item name and quantity to the list
# # output: A hash key/value pair

# def add_item(item, list, quantity)
#     list[item] = quantity
# end 

# add_item("x", hash_list, 1)
# p hash_list

# # Method to remove an item from the list
# # input: Item name 
# # steps:
# # ask for item name
# # remove item from list
# # output: the item to remove

# def remove_item(list,item)
#   list.delete(item)
# end

# remove_item(hash_list, 'x')
# p hash_list

# # Method to update the quantity of an item
# # input: Item name / quantity
# # steps:
# # ask for item name
# # ask for new quantity
# # amend new item name/quantity to list
# # output:

# def update_quantity(list, item, quantity)
#   list[item] = quantity
# end
# update_quantity(hash_list, "orange", 20)
# p hash_list
  

# # Method to print a list and make it look pretty
# # input: the list
# # steps:
# # add text to list output
# # Print out list data
# # output: the list

# def print_list(list)
#   puts "You need:"
#   list.each do |k, v|
#     puts "#{v} #{k}!"
#   end
# end

# print_list(hash_list)


#  Refactor

sample = "apple orange pizza"
hash_list = create_list(sample)

def create_list(items)
  hash_list = Hash.new(0)
  list_arr = items.split(" ")
  list_arr.each { |item| hash_list[item] = 1 }
  hash_list
end

def remove_item(list,item)
  list.delete(item)
end

def update_quantity(list, item, quantity)
  list[item] = quantity
end

def print_list(list)
  list.each { |item, quantity| puts"You need: #{quantity} #{item}!" }
end
=begin
What did you learn about pseudocode from working on this challenge?
-Pseudocoding is an invaluable tool to use when coding since it provides a sort of
step-by-step guide which we can follow along while coding.

What are the tradeoffs of using Arrays and Hashes for this challenge?
-For this challenge, my partner and I used a hash, because it was appropriate for the type of
data (an item associated with quantity of item)we were working with. I suppose if we were dealing with data that were unrelated, using an array
would've made more sense. 

What does a method return?
-A method returns the last evaluated value unless specified otherwise.

What kind of things can you pass into methods as arguments?
-Pretty much anything. For our example, we passed our hash, variable, and integers.

How can you pass information between methods?
-To pass information between methods, we simply call the method. In our example, we were able to define our methods
in a way such that our original data was constantly being modified.

What concepts were solidified in this challenge, and what concepts are still confusing?
-We were intitially lost on how to tie all the methods together, and later realized
that we had to use local variables. I'm still a bit iffy about local variables, but hopefully with practice I can get there.
=end
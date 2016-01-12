# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 3
# ============================================================
# p array[1][2][1]
p array[1]
puts
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# Initial attempt

=begin
number_array.each do |element|
  if element.is_a?(Integer)
     element += 5
  end
end
=end

#Second Attempt : none-destructive, MVP
=begin
def plus_five(array)
  array.each do |element|
    if element.is_a?(Integer)
     element += 5
      puts element
    elsif element.is_a?(Array)
      element.each do |inner_element| 
        inner_element += 5
        puts inner_element
      end   
    end
  end
end
=end

# Third attempt: Destructive attempt

# def plus_five(array)
#   array.map! do |num| 
#     num + 5
#   end
#   array.each do |element|
#     if element.is_a?(Array)
#       array.map! { |num| num + 5}
#     end
#   end
# end

# Successful destructive solution

number_array.map! do |element|
    if element.is_a?(Array)
       element.map! {|inner| inner + 5}
    else
      element + 5
    end
end

p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#first attempt, error if element is not array or string

# startup_names.map do |element|
#   if element.is_a?(Array)
#     puts element
#     element.map { |inner| inner + "ly" }
#   else
#     element + "ly"
#   end
# end

#second attempt: Works on array/strings. only 1 level down

# startup_names.map! do |element|
#   if element.is_a?(String)
#     element + "ly"
#   elsif element.is_a?(Array)
#     element.map! { |word| word.to_s + "ly"}     
#   end
# end
 
# p startup_names

# solution for 3 levels down. Refactored for readability with variable
# names.  MVP but not DRY.  Thoughts for dry but didn't figure out:
# -"map" input array and all elements/sub arrays
# -FLATTEN array and iterate over it
# -"unflatten" array (use zip? and the previous "map") ?

startup_names.map! do |element|
  if element.is_a?(Array)
    element.map do |inner_arr| 
      if inner_arr.is_a?(Array)
        inner_arr.map! { |inner2| inner2.to_s + "ly"}
      else
        inner_arr + "ly"
      end
    end
  elsif element.is_a?(String)
    element + "ly"
  end 
end

p startup_names


=begin
Reflection

What are some general rules you can apply to nested arrays?
-Working with nested arrays can be confusing at times, so it's important
to go slowly, moving from the left to the right.

What are some ways you can iterate over nested arrays?
-The same methods and code will be applied as if you were working with one-dimensional arrays,
but the issue is repeating code blocks in order to select for those nested arrays. For example,
for Release 3, my partner and I had to use the map method twice to account for the arrays within 
the original array.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
-The is_a? method, which is synonymous with the kind_of? method, was something I'd never used before. 
It was appropriate for the challenge because we needed to identity which elements were which. The map
method was also something that was sort of new for me, and using it was crucial to getting our code 
to work the way we wanted.









=begin
Pseudocode
-create new array with list of everyone's names
-See if we can randomize the array
-Divide original array into smaller arrays of 4 people
=end

# Initial Solution
array = ["Dong Wook Seo", "Aaron Hu", "Adam Pinsky", "Akeem Street", "Alex Forger", "Andrew Kim", "Baron Kwan", "Brian Bier", "Byron Gage", "Carl Conroy", "Charlie Bliss",
 "Christopher Bunkers", "Cody Kendall", "Coline Forde", "David Valencia", "Emily Claire Bosakowski", "Everett Golden", "Hagai Zwick", "Heather Conklin", "Ian Wudarski", "Ieronim Oltean",
 "Jake Hamilton", "James Boyd", "Jasmeet Chatrath", "Jenna El-Amin", "Jerrie Evans", "Joe Case", "Jonathon Case", "Jonathan Schwartz", "Jonathon Silvestri", "Kathryn Garbacz", "Ian Kinner", "Kyle Cierzan",
  "Kyle Zelman", "Linda Oanh Ho", "Yiorgos Makridakis", "Matt Harris", "Matthew Baquerizo", "Menuka Samaranayake", "Michael Pintar", "Mollie Stein", "Lydia Nash", "Aaron Opsahl", "Peter Leong", "Peter Stratoudakis",
 "Prince Sadie", "Ryan Salerno" , "Sanderfer Chau", "Sarah Finken", "Emmet Susslin", "Sydney Rossman-Reich", "Eric Tenza", "Thomas Yancey", "Tim Kelly", "Timothy Beck", "Tyler Doerschuk"]
def groups(array)
	array.shuffle
	array.each_slice(4) {|x| p x}
end


#Refactor
def groups(array)
	array.shuffle.each_slice(4) {|x| p x}
end 

=begin
What was the most interesting and most difficult part of this challenge?
-I knew from the get-go the steps I wanted to break down this challenge, but the most interesting thing was
deciding which methods worked best. Once I read into the Ruby Docs, there were just a few methods that
would accomplish what I needed.
Do you feel you are improving in your ability to write pseudocode and break the problem down?
- Yes, with more practice it becomes easier and easier to write accessible pseudocode.

Was your approach for automating this task a good solution? What could have made it even better?
- Honestly, I think the each_slice method is the most efficient method for this challenge because
it saves me the trouble of creating individual group arrays and pushing each name into different arrays.

What data structure did you decide to store the accountability groups in and why?
- I chose to work with an array because I needed something for the purposes of storing data, without any need for
any additional sorting or grouping. Of course, this was assuming that I would be able to randomize the array.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
-I used the .each_slice method which breaks down an array into smaller arrays of a chosen length. In this case, I "sliced" the original array
into smaller arrays of 4 objects. The shuffle method was also handy because it allowed me to randomize the array.
=end
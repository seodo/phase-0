#Attr Methods

# I worked on this challenge by myself.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: A variable called greet and a method called hello.
# Output: The output will be a generic greeting.
# Steps: Create NameData class by intiliazing with a variable equal to my name.
# Create a Greetings class initialized by setting a variable equal to an instance of NameData.
# Create the hello method and incorporate the "name" so we can individualize the greeting by name.

class NameData
  attr_reader :name
  def initialize
    @name = "John"
  end

end

class Greetings
  def initialize
    @greet = NameData.new
  end

  def hello
    puts "Hello #{@greet.name}! How wonderful to see you today"
  end 
end 

greet = Greetings.new
greet.hello



# Reflection
=begin
((Release 1))
What are there methods doing?
-These methods are created under the Profile class, setting the instance variables
with values. The later methods allow us to change the values of the variables that have
already been defined.

How are they modifying or returning the value of instance variables?
- The first three methods return the values of our instance variable, while the last 3 methods 
allow us to modify those values.

((Release 2))
What changed between the last release and this release?
-In this release we added an attribute reader for age, which allowed us to remove
the method what_is_age.

What was replaced?
- We deleted the what_is_age method because our attribute reader made it redundant.

Is this code simpler than the last?
-Yes, it's definitely much shorter and easier to read.

((Release 3))
What changed between the last release and this release?
-In this release we added an attribute writer for age, which allowed us to remove
the method change_my_age.

What was replaced?
-We deleted the change_my_age method because our attribute writer made it redundant.

Is this code simpler than the last?
-Yes, it's shorter than the last and easier to read.

((Release 4)) (I just answer the same questions for this release because none were specificed.)
What changed between the last release and this release?
- We "combined" the attribute reader and attribute writer for age into an attribute accessor
which allows us to either read or change the value of age.

What was replaced?
- We deleted both the attribute reader and attribute writer and replaced them with an 
attribute accessor.

IS this code simpler than the last?
-Yes, now what originally was 4 different methods is done with the attribute accessor.

((Release 6-Reflection questions))
What is a reader method?
-A reader method gives us the value of an instance variable.

What is a writer method?
-A writer method allows us to change the value of an instance variable.

What do the attr methods do for you?
- Attr methods allow us to trim our code and make it easier to read. They also
save us time from having to create separate methods to return and change values of variables.

Should you always use an accessor to cover your bases? Why or why not?
-Not always, sometimes when we don't want our values modified, it's best if we don't use an accessor.

What is confusing to you about these methods?
- I understood everything easily until the last release where we had to create our own classes.
It wasn't confusing per se, but it was something very new and took some time to implement.



# OO Basics: Student


# I worked on this challenge Aaron Opsahl .
# This challenge took me [1.5] hours.


# Pseudocode



# Initial Solution

# class Student
#   attr_accessor :scores, :first_name

#   def initialize(first_name, scores)   #Use named arguments!
#     @first_name = first_name
#     @scores = scores
#   end
  
#   def average
#     sum = 0
#     @scores.each { |scores|
#       sum += scores
#       }
#     @average = sum / scores.length
#     return @average
#   end
  
#   def letter_grade
#     if @average >= 90
#       return "A"
#     elsif @average >= 80
#       return "B"
#     elsif @average >= 70
#       return "C"
#     elsif @average >= 60
#       return "D"
#     else
#       return "F"
#     end 
#   end
    
# end

# #  (A for >=90%, B for >=80%, C for >= 70%, D for >= 60% and F for < 60%).



# alex_student = Student.new("Alex", [100,100,100,0,100])
  
# josh_student = Student.new("Josh", [90,90,80,80,85])
  
# claire_student = Student.new("Claire", [90,90,89,90,85])
  
# joe_student = Student.new("Joe", [100,80,90,70,85])

# yessica_student = Student.new("Yessica", [100, 78, 23, 0, 89])

# students = [alex_student, josh_student, claire_student, joe_student, yessica_student]



# def linear_search(students, name)
#     students.each { |student| 
#     if student.first_name == name
#       return students.index(student)
#     else
#       return -1
#     end 
#     }
  
#   end


# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end
  
  def average
    sum = @scores.inject { |sum, x| sum + x }
    @average = sum / scores.length
    return @average
  end
  
  def letter_grade
    case @average
    when 90..100
      return "A"
    when 80..89
      return "B"
    when 70..79
      return "C"
    when 60..69
      return "D"
    else
      return "F"
    end 
  end

end

alex_student = Student.new("Alex", [100,100,100,0,100])
  
josh_student = Student.new("Josh", [90,90,80,80,85])
  
claire_student = Student.new("Claire", [90,90,89,90,85])
  
joe_student = Student.new("Joe", [100,80,90,70,85])

yessica_student = Student.new("Yessica", [100, 78, 23, 0, 89])

students = [alex_student, josh_student, claire_student, joe_student, yessica_student]



def linear_search(array, name)
    array.each { |student| 
    if student.first_name == name
      return array.index(student)
    else
      return -1
    end 
    }
  
  end



# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1

# Reflection
# What concepts did you review in this challenge?
# - I got to practice with instance variables and attribute accessors.
# What is still confusing to you about Ruby?
# -When to declare instance methods. For example, in the average method, I wasn't sure 
# if we needed to declare the variable sum as an instance variable.
# What are you going to study to get more prepared for Phase 1?
# - I will continue going over challenges from the past and online.



#Exercise 1 -- People.rb for OOP class

class Person

attr_accessor :name               

def initialize(name)
	@name = name
end

def greeting
	puts "Hi, my name is #{@name}"
end

end     #end of the Person class




class Student < Person 

def learn
	puts "I get it!"
end

end     #end for of the Student class   

class Instructor < Person

def teach
	puts "Everything in Ruby is an Object"
end

end     #end of the Instructor class

chris = Instructor.new("Chris")   #NTS: Dont forget to use " " when declaring a parameter for initialize
chris.greeting

christina = Student.new("Christina")
christina.greeting

chris.teach
christina.learn

# chris.learn        #won't work because each object can only pass the methods in that specific class; given chris is in the instructor class, it cannot access the learn method 
# christina.teach

#Question: in this scenario, what is leading practice for creating an object that has the same name as the instance variable name??
#Exercise 2 -- Mars Rover.rb for OOP class

# class Plateau

# attr_accessor :width, :length 

# def initialize(width, length)
# 	@width = width 
# 	@lengt = length
# end

# end  #end of the Plateau class 


class Rover

attr_accessor :x_cord, :y_cord, :direction

def initialize(x_cord, y_cord, direction)
	@x_cord = x_cord.to_i 
	@y_cord = y_cord.to_i
	@direction = direction.upcase.to_s 
end

def read_instruction
	puts "What do you want the rover to do?"
	instructions = gets.chomp.upcase.split("") 		#gets instructions through a combination of L and R and M for one step increments  
	instructions.each do |step|
		if step == "L"
			turn_left
		elsif step == "R"
			turn_right			
		elsif step == "M"
			move
		else
			puts "Please revise the rover instructions to include L, R or M"
		end
	end 
end

def turn_left
	if @direction == "N"
		@direction = "W"
	elsif @direction == "E"
		@direction = "N"
	elsif @direction == "S"
		@direction = "E"
	elsif @direction =="W"
		@direction = "S"
	end
end

def turn_right
	if @direction == "N"
		@direction = "E"
	elsif @direction == "E"
		@direction = "S"
	elsif @direction == "S"
		@direction = "W"
	elsif @direction =="W"
		@direction = "N"
	end
end

def move
	if @direction == "N" 
		@y_cord += 1
	elsif @direction == "S"
		@y_cord -= 1 
	elsif @direction == "E"
		@x_cord += 1
	elsif @direction == "W"
		@x_cord -= 1 
	end	
end

def location_update
return "Rover is currently at #{@x_cord} and #{@y_cord} facing #{@direction}"
end

end   #end of the Rover class 

# puts "How big is the plateau?"
# mars_section_1 = Plateau.new(gets.chomp.split (" "))  #?????

puts "Where do you wish to start the rover and facing which direction?"
location = gets.chomp.split(" ")
rover_alpha = Rover.new(location[0], location[1], location[2])
rover_alpha.read_instruction
puts rover_alpha.location_update

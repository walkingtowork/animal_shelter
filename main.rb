# List available pets
# Adopt a pet
# Give up a pet for future adoption
# Shelter -> Pet -> Toys
# Client  -> Pet -> Toys
# Pet is available?
# Initial state: Shelter exists, some pets are already available (all/some pets have toys)
# You are a client adopting/giving up a pet 

require "pry"

require_relative "shelter"
require_relative "pet"
require_relative "client"

shelter = nil

#To Do:
#create clients
#create shelters
#create pets
#populate each

s1 = Shelter.new("Woodland Shelter", "124 Woodland Drive", 30)

p1 = Pet.new("Fluffy", "Dog", "squeaky ball", "shelter")
p2 = Pet.new("Spot", "Dog", "shoe", "shelter")


s1.pets["Fluffy"] = p1
s1.pets["Spot"] = p2

#App starts

while @goal_response != "adopt" && @goal_response != "donate"
  puts "Would you like to adopt (adopt) a pet or donate (donate) a pet?"
  @goal_response = gets.chomp.downcase
end

puts "What is your name?"
name_response = gets.chomp

puts "How many pets do you own (0, 1, 2, etc.)?"
num_pets_response = gets.chomp.to_i

c1 = Client.new(name_response, num_pets_response, @goal_response)

#adopt or donate
if c1.goal_to_adopt == "adopt"
 puts "Here is a list of all of the pets in our shelter. "
 puts s1.pets.values

 puts "Which one would you like to adopt?"
 adopt_response = gets.chomp

 c1.pets[adopt_response] = s1.pets[adopt_response]
 s1.pets.delete(adopt_response)
 puts "Thank you for adopting #{adopt_response}!"
 p c1
else #donate
  puts "Which pet would you like to give up for adoption?"
  pet_name = gets.chomp

  puts "What type of animal is #{pet_name}?"
  pet_type = gets.chomp

  puts "What is #{pet_name}'s favorite toy?"
  pet_toy = gets.chomp

  new_pet = Pet.new(pet_name, pet_type, pet_toy, c1)
  c1.pets[new_pet] = new_pet

  puts "Are you sure you want to give #{pet_name} up for adoption (yes/no)?"
  give_away = gets.chomp 

  if give_away == "no"
    puts "Yay! You decided to keep #{pet_name}!"
  else
    puts "Say goodbye to #{pet_name}..." 
    p c1
    p s1
    s1.pets[new_pet] = c1.pets[new_pet]
    c1.pets.delete(new_pet)
    c1.num_pets = c1.num_pets - 1
    p s1
    p c1  
  end
end


puts new_pet
#p c1
#p s1

# elsif 
# 	response == "quit"
# 	puts "Thank you."
# else
# 	puts "Thank you." #fix this
# end


# If adopt, list shelters with available pets
# 	what type of pet to adopt
# 	list shelters(name, number of pets type, address) with available pet type
# 	where would you like to go?
# 		list pet names that meet criteria
# 	which pet do you want to look at?
# 	do you want to adopt or keep looking
# 		if adopt, pets +1, clients +1, shelter -1, keep looking?
# 		if keep looking, here or go back to start, or quit



# If donate, list shelters with available cages
# 	where would you like to go
# 	what type of pet
# 	change status of pet, client, shelter
# 	donate another pet?
# 	go back to start, or quit


# 	def adopt
# 		if shelter pet is adopted then populate @pets {}
# 	end

# 	def donate
# 		if able_to_donate is true and shelter has space, then decrease pets {} by 1
# 	end

binding.pry


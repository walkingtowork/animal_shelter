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
require_relative "AnimalGraphics"

include AnimalGraphics

shelter = nil

#To Do:
#create clients
#create shelters
#create pets
#populate each

tree_friends = Shelter.new("Happy Tree Friends", "124 Woodland Drive", 30)

dog1 = Pet.new("Fluffy", "dog", "squeaky ball", "shelter")
dog2 = Pet.new("Spot", "dog", "shoe", "shelter")
cat = Pet.new("Boots", "cat", "boots", "shelter")
giraffe = Pet.new("Geoffrey", "giraffe", "race car", "shelter")
brontosaurus = Pet.new("Little Foot", "brontosaurus", "tree star", "shelter")
stegosaurus = Pet.new("Spike", "stegosaurus", "Ducky", "shelter")


tree_friends.pets["Fluffy"] = dog1
tree_friends.pets["Spot"] = dog2
tree_friends.pets["Boots"] = cat
tree_friends.pets["Geoffrey"] = giraffe
tree_friends.pets["Little Foot"] = brontosaurus
tree_friends.pets["Spike"] = stegosaurus

#App starts
puts Pet::SHELTER_NAME
puts Pet::DOG_IMAGE_TWO

while @goal_response != "adopt" && @goal_response != "donate"
  puts "Would you like to adopt (adopt) a pet or donate (donate) a pet?"
  @goal_response = gets.chomp.downcase
end

puts "What is your name?"
name_response = gets.chomp

user = Client.new(name_response, @goal_response)

#adopt or donate

puts tree_friends.pets #change this to print just pet types
#puts tree_friends.pets[key].value.each something like this?

if user.goal_to_adopt == "adopt"
  selected_pets = {}
  while selected_pets == {}
    puts "What type of pet would you like to adopt?"
    pet_type = gets.chomp
    selected_pets = tree_friends.pets.select{|key, value| value.type == pet_type}
  end


 puts "Here is a list of all of the #{pet_type}s in our shelter. "
 puts selected_pets.values


 puts "Which one would you like to adopt?"
 adopt_response = gets.chomp

 user.pets[adopt_response] = tree_friends.pets[adopt_response]
 tree_friends.pets.delete(adopt_response)
 puts "Thank you for adopting #{adopt_response}!"
 #p user
else #donate
  puts "Which pet would you like to give up for adoption?"
  pet_name = gets.chomp

  puts "What type of animal is #{pet_name}?"
  pet_type = gets.chomp

  puts "What is #{pet_name}'s favorite toy?"
  pet_toy = gets.chomp

  new_pet = Pet.new(pet_name, pet_type, pet_toy, user)
  user.pets[new_pet] = new_pet

  puts "Are you sure you want to give #{pet_name} up for adoption (yes/no)?"
  give_away = gets.chomp 

  if give_away == "no"
    puts "Yay! You decided to keep #{pet_name}!"
  else
    puts "Say goodbye to #{pet_name}..." 
    tree_friends.pets[new_pet] = user.pets[new_pet]
    user.pets.delete(new_pet)
    puts Pet::SAD_PUPPY
  end
end


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


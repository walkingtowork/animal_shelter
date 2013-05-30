# List available pets
# Adopt a pet
# Give up a pet for future adoption
# Shelter -> Pet -> Toys
# Client  -> Pet -> Toys
# Pet is available?
# Initial state: Shelter exists, some pets are already available (all/some pets have toys)
# You are a client adopting/giving up a pet 


require_relative "shelter"
require_relative "pet"
require_relative "client"

shelter = 

#To Do:
#create clients
#create shelters
#create pets
#populate each



def adopt_or_donate
		puts "Do you want to adopt or donate or quit?"
		if adopt, client adopt and pets+1
		if donate, client donate and pets -1
end

If adopt, list shelters with available pets
	what type of pet to adopt
	list shelters(name, number of pets type, address) with available pet type
	where would you like to go?
		list pet names that meet criteria
	which pet do you want to look at?
	do you want to adopt or keep looking
		if adopt, pets +1, clients +1, shelter -1, keep looking?
		if keep looking, here or go back to start, or quit



If donate, list shelters with available cages
	where would you like to go
	what type of pet
	change status of pet, client, shelter
	donate another pet?
	go back to start, or quit


	def adopt
		if shelter pet is adopted then populate @pets {}
	end

	def donate
		if able_to_donate is true and shelter has space, then decrease pets {} by 1
	end





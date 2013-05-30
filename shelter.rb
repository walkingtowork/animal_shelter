class Shelter
	attr_accessor :address, :name, :num_pets, :pets, :cages
	def initialize(address, name, cages)
		@address = address
		@name = name
		@num_pets = @pets.count
		@pets = {}
		@cages = cages
	end

	def has_space?
		if num_pets < @cages
			return true
		else 
			return false	
	end

	def available_to_receive?
		if has_space? is true, return "available"
		else return "unavailable"

		if has_space == true
			return "available"
		else 
	end

	def to_s
		"The #{@name} at #{@address} has #{num_pets} available to adopt. They are #{available_to_receive} pets."

end

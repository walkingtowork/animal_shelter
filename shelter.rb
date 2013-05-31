class Shelter

	attr_accessor :address, :name, :pets, :cages

	def initialize(name, address, cages)
		@address = address
		@name = name
		@pets = {}
		@cages = cages
	end

	def has_space?
		if num_pets < @cages
			return true
		else 
			return false
		end	
	end

	def num_pets
    @pets.keys.length
  end

	def able_to_receive?
		if has_space? == true
			return "able"
		else
			return "unable"
		end
	end

	def to_s
		"The #{name} at #{address} has #{num_pets} pets available for adoption. They are #{able_to_receive?} to receive your unwanted pets."
	end
end
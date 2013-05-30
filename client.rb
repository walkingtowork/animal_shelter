class Client
	attr_accessor :name, :occupation, :num_pets, :goal_to_adopt
	def initialize(name, num_pets, occupation, goal_to_adopt)
		@name = name
		@pets = {}
		@num_pets = num_pets
		@occupation = occupation
		@goal_to_adopt = @goal_to_adopt
	end

	def able_to_donate
		if num_pets != 0 && goal_to_adopt == false
			return true
		else 
			return false
		end
	end

	def adopt_or_donate
		if goal_to_adopt == true
			return "adopt"
		else
			return "donate"
		end
	end

	def to_s
		"#{@name} (#{@occupation}) has #{@num_pets}. They are looking to #{adopt_or_donate}."
	end
end
class Client
	attr_accessor :name, :goal_to_adopt, :pets
	def initialize(name, goal_to_adopt)
		@name = name
		@pets = {}
		@goal_to_adopt = goal_to_adopt
	end

	def able_to_donate
		if num_pets != 0 && goal_to_adopt == false
			return true
		else 
			return false
		end
	end

	def num_pets
  	@pets.keys.length 
  end

	def to_s
		"#{name} has #{num_pets} pet(s)."
	end
end
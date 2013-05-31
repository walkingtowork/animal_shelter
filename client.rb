class Client
	attr_accessor :name, :goal_to_adopt, :pets, :num_pets
	def initialize(name, num_pets, goal_to_adopt)
		@name = name
		@pets = {}
		@goal_to_adopt = goal_to_adopt
    @num_pets = num_pets
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
		"#{name} has #{num_pets} #{@num_pets} pet(s)."
	end
end
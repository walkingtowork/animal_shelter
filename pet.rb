class Pet
	attr_accessor :name, :type, :toy, :owner
	def initialize (name, type, toy, owner)
		@name = name
		@type = type
		@toy = toy
		@owner = owner
	end

	def is_available?
		if @owner == shelter
			return true
		else 
			return false
		end
	end

	def to_s
		"This is a #{type} named #{name}. Its favorite toy is a #{toy}."
	end
end

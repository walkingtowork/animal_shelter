class Pets
	attr_accessor :name, :type, :toy, :owner, :healthy
	def initalize (name, type, toy, owner, healthy)
		@name = name
		@type = type
		@toy = []
		@owner = owner
		@healthy = healthy
	end

	def is_available?
		if @owner == shelter && @healthy == true
			return true
		else 
			return false
		end
	end

	def healthy
		if @healthy == true 
			return "healthy"
		else 
			return "unhealthy"
		end
	end

	def to_s
		"This is #{@name}, a #{@type}. His favorite toy is #{@toy}, and it is #{@healthy}."
	end
end

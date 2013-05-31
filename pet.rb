require_relative "AnimalGraphics"

class Pet
	attr_accessor :name, :type, :toy, :owner
  include AnimalGraphics

  def animal_graphics 
    { 
      "dog" => Pet::DOG_IMAGE, 
      "cat" => Pet::CAT_IMAGE, 
      "giraffe" => Pet::GIRAFFE_IMAGE, 
      "brontosaurus" => Pet::BRONTOSAURUS_IMAGE, 
      "stegosaurus" => Pet::STEGOSAURUS_IMAGE
    }
  end

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
		"This is a #{@type} named #{name}. Its favorite toy is a #{toy}." + "\n" + animal_graphics[@type]
	end
end

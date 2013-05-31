require "pry"

require_relative "shelter"
require_relative "pet"
require_relative "client"

shelter = nil

s1 = Shelter.new("Woodland Shelter", "124 Woodland Drive", 30)

c1 = Client.new("Dwayne", 0, "Programmer", true)

p1 = Pet.new("Fluffy", "Dog", "squeaky ball", "shelter", true)
p2 = Pet.new("Spot", "Dog", "shoe", "shelter", true)




binding.pry
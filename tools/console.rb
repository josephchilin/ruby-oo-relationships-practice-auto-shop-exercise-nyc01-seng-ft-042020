require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end

#test code here

# car owner argument: name
# mechanic arguments: name, specialty

# car arguments: (make, model, classification, carOwner, mechanic)

owner1 = CarOwner.new("Amy")
owner2 = CarOwner.new("Jon")
owner3 = CarOwner.new("Howard")
owner4 = CarOwner.new("Steven")

mechanic1 = Mechanic.new("Bob", "mid-size")
mechanic2 = Mechanic.new("Tom", "sports car")
mechanic3 = Mechanic.new("Ann", "SUV")


car1 = Car.new("Bugatti", "Veyron", "sports car", owner1, mechanic1)
car2 = Car.new("Toyata", "Camry", "mid-size", owner3, mechanic2)
car3 = Car.new("Honda", "Accord", "mid-size", owner2, mechanic3)
car4 = Car.new("Ford", "GT", "sports car", owner1, mechanic2)
car5 = Car.new("Honda", "Accord", "mid-size", owner1, mechanic1)
car6 = Car.new("Honda", "Accord", "mid-size", owner3, mechanic3)
car7 = Car.new("Honda", "CR-V", "SUV", owner1, mechanic1)
car8 = Car.new("Ford", "Explorer", "SUV", owner4, mechanic2)




binding.pry

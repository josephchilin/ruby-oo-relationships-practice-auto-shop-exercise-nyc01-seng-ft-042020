# Mechanic.all Get a list of all mechanics

# Mechanic#cars Get a list of all cars that a mechanic services
##mechanic can service many cars

# Mechanic#car_owners Get a list of all the car owners that go to a specific mechanic
##mechanic can work for many owners

# Mechanic#car_owners_names Get a list of the names of all car owners who go to a 
# specific mechanic
require "pry"

class Mechanic

  attr_reader :name, :specialty

@@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    Mechanic.all << self

  end

  def self.all
    @@all
  end

  def cars
    Car.all do select |car|
      car.mechanic == self
    end
  end

  def car_owners
    cars.map do |car|
      car.car_owner
    end
  end

  def car_owners_names
    car_owners.map do |owners|
      owners.name
    end
  end






end

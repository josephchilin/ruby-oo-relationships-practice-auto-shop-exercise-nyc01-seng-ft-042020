# CarOwner.all Get a list of all owners

# CarOwner#cars Get a list of all the cars that a specific owner has
##owner has many cars

# CarOwner#mechanics Get a list of all the mechanics that a specific owner goes to
##owner has many mechanics

# CarOwner.average_number_of_cars Get the average amount of cars owned for all owners

require "pry"

class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    CarOwner.all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanics
    cars.map do |car|
      car.mechanic
    end
  end

  def self.average_number_of_cars
#total_cars/total_owners
    total_owners = self.all.count
    total_cars = Car.all.count
    total_cars/total_owners
  end




end

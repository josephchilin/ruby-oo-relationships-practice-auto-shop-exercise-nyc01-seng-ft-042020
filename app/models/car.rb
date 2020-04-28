# Car.all Get a list of all cars

# Car.classifications Get a list of all car classifications

# Car.find_mechanics(classification) Get a list of mechanics that have an expertise that 
# matches the passed in car classification

##joiner model

require "pry"
class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, carOwner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = carOwner
    @mechanic = mechanic
    Car.all << self

  end

  def self.all
    @@all
  end    

  def self.classifications
      self.all.map do |car|
        car.classification
      end.uniq
  end


  def find_mechanics
      Mechanic.all.select do |car|
        car.classification
      end
  end





end


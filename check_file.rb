# TIL - Today I learned

# 3/10/20

# In this example, the inheriting classes (Car and Bike) require a different number of arguments than the inherited class (Vehicle). This require the use of super() instead of super in the inheriting classes.

class Vehicle
  attr_reader :speed, :direction
  attr_writer :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car < Vehicle
  def initialize(input_options_hash)
    super()
    @fuel = input_options_hash[:fuel]
    @make = input_options_hash[:make]
    @model = input_options_hash[:model]
    @year = input_options_hash[:year]
  end
end

class Bike < Vehicle
  def initialize(input_options_hash)
    super()
    @speeds = input_options_hash[:speeds]
    @type = input_options_hash[:type]
    @weight = input_options_hash[:weight]
  end
end

car1 = Car.new(
  fuel: "Unleaded",
  make: "Honda",
  model: "Accord",
  year:  2016
)

p car1

bike1 = Bike.new(
  speeds: 10,
  type: "Felt",
  weight: 25
)

p bike1


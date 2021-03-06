class Vehicle
  attr_reader :speed, :direction
  attr_writer :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
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

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def initialize(input_options_hash)
    super()
    @speeds = input_options_hash[:speeds]
    @type = input_options_hash[:type]
    @weight = input_options_hash[:weight]
  end
  def ring_bell
    puts "Ring ring!"
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


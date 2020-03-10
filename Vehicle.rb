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
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

car1 = Car.new
puts car1.speed
car1.accelerate
puts car1.speed
car1.brake
puts car1.speed
puts car1.honk_horn
car1.turn("west")
puts car1.direction

bike1 = Bike.new
puts bike1.ring_bell 


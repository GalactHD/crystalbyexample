module Constants
  PI  = 3.145
  TAU = PI * 2
  E   = 2.718
end

puts Constants::PI

module Greet
  def hello
    puts "Hello!"
  end
end

class Person
  include Greet
end

s = Person.new
s.hello

module MathHelpers
  def self.square(x)
    x * x
  end
end

puts MathHelpers.square(5)

module Trackable
  def track
    puts "Tracking #{self}"
  end
end

class Car
  include Trackable
end

class Bike
  include Trackable
end

Car.new.track
Bike.new.track

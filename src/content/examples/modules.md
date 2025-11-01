---
title: Modules
order: 11
nextExample:
  - visibility
---

Modules in Crystal are used to organize code and share functionality. They can contain methods, constants, and types, but they cannot be instantiated.

Using modules as namespaces is simple—use the `::` operator to access what is inside the module.

`include` adds the module's methods as instance methods to the class or struct that includes it, and `extend` adds the module's methods as class methods, tied to the class or struct itself.

Inside the module, `self` can be used to create methods that belong to the module itself.
Modules do not allow inheritance, but they can be included in multiple classes or structs to reuse code.

```crystal
module Constants
  PI = 3.145
  TAU = PI * 2
  E = 2.718
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
```

```
$ crystal run modules.cr

3.145
Hello!
25
Tracking #<Car:0x23c4dc96fb0>
Tracking #<Bike:0x23c4dc96fa0>
```
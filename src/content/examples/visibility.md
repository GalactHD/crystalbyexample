---
title: Visibility
order: 16
nextExample:
  - enums
---
Visibility in programming is a simple concept: controlling what should be public or private.

In Crystal, methods, variables, constants, and classes are public by default, meaning all files in the project have access to them. To change this, you need to use visibility modifiers such as `private` and `protected`.

In the example, the secret recipe method is private, it can only be accessed by methods, variables, or any other structure within the same module. The sausage-making method, on the other hand, is public and can be called normally from outside.

`private` can also be used with classes, constants, and properties.

The `protected` modifier is used for methods that can only be accessed within the same class or its subclasses, allowing controlled communication between related types.

```crystal
module SausageFactory
  private RECIPE = "Salt"

  private def self.get_secret_recipe : String
    RECIPE
  end

  def self.make_sausage
    get_secret_recipe
    puts "Some sausage"
  end
end

SausageFactory.make_sausage

class Point
  property x : Int32
  property y : Int32
  private property euclidian : Bool

  def initialize(@x : Int32, @y : Int32, @euclidian : Bool)
  end

  private def is_euclidian(x, y, euclidian)
    if x % y == x + y || euclidian == true
      puts "this does nothing as spected!"
    end
  end

  protected def calc_distance(other : Point)
    Math.sqrt((@x - other.x) ** 2 + (@y - other.y) ** 2)
  end

  def info
    puts "X: #{@x} Y: #{@y}"
  end
end

class ColoredPoint < Point
  property color : String

  def initialize(x, y, euclidian, @color)
    super(x, y, euclidian)
  end

  def distance_from(other : Point)
    puts calc_distance(other)
  end
end

p1 = ColoredPoint.new(1, 2, true, "red")
p2 = ColoredPoint.new(4, 6, false, "blue")
p1.info
p1.distance_from(p2)
```

```
$ crystal run visibility.cr

Some sausage
X: 1 Y: 2
5.0
```

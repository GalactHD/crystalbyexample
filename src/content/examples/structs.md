---
title: Structs
order: 12
nextExample:
  - modules
---
Structs in Crystal are similar to classes, but they are allocated on the stack, which is a fast-access memory area, making them "lighter" than classes.

Structs can only inherit from structs marked as abstract. Abstract structs cannot be instantiated directly and only serve as a base for other structs.

Structs can also serve as types, and this is commonly the case in composite data structures (structs containing other structs).

```crystal
struct Person
  def initialize(name : String, age : UInt8)
    @name = name
    @age = age
  end

  def info
    puts "I'm #{@name} and my age is #{@age} years old"
  end
end

a = Person.new("Carl", 32)
a.info

abstract struct Shape
  abstract def area : Float64
end

struct Circle < Shape
  property radius : Float64

  def initialize(radius)
    @radius = radius
  end

  def area : Float64
    Math::PI * @radius ** 2
  end
end

c = Circle.new
puts c.radius

struct Point
  property x : Int32
  property y : Int32

  def initialize(@x : Int32, @y : Int32)
  end
end

struct Rectangle
  property top_left : Point
  property bottom_right : Point

  def initialize(top_left : Point, bottom_right : Point)
    @top_left = top_left
    @bottom_right = bottom_right
  end

  def area
    width = @bottom_right.x - @top_left.x
    height = @bottom_right.y - @top_left.y
    width * height
  end
end

p1 = Point.new(0, 0)
p2 = Point.new(10, 5)

r = Rectangle.new(p1, p2)
puts r.area
```

```
$ crystal run structs.cr

I'm Carl and my age is 32 years old
78.53981633974483
50
```

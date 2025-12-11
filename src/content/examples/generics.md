---
title: Generics
order: 16
nextExample:
  - exceptions
---

Generics are used to provide flexity and security to code.

In Crystal programming language, generics make classes, modules, structs, and methods more reusable. By using generics, you can design structures that can handle multiple types.

This makes the code more adaptable and easier to expand. For example, collections in Crystal, such as Arrays, Hashes, and Channels, are all generic. This means you can store and manipulate elements of any type without writing separate implementations for each type.

Generics can be add multiple times on parameters, and the type before usage need to be explicity.

```crystal
class Point(T)
  property x : T
  property y : T

  def initialize(@x, @y)
  end

  def show
    puts "X: #{@x} Y: #{@y}"
  end
end

a, b = Point(Float32).new(3.2, 4.5), Point(Int32).new(11, 23)
a.show
b.show

module Some(M, N)
  def self.show(a : M, b : M)
    puts "#{a} | #{b}"
  end
end

Some(String, String).show("A", "B")
Some(Float32, Float32).show(6.28, 3.14)
```

```
$ crystal run generics.cr

X: 3.2 Y: 4.5
X: 11 Y: 23
A | B
6.28 | 3.14
```

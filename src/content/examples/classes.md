---
title: Classes
order: 9
nextExample:
  - structs
---

Classes are used to organize code. They combine data and actions in one place. Each class serves as a blueprint for creating objects with their own values and behaviors.

Crystal uses classes; the language is class-based because it is object-oriented.

The `initialize` method runs when we create a new object with `.new`. It sets the initial values of the object.

Classes can have methods, which perform actions, and variables, which store information. These variables are accessed with @ inside the class.

A `getter` creates a way to read a value, a `setter` creates a way to change a value, and `property` does both at the same time.

`self` represents the object itself. It is used to call a method from within the same class.

With inheritance, a class can use what another class already has by writing `<`. The child class can modify or enhance what it inherited from the parent class.

An abstract class is a type of class that serves only as a model. It cannot be instantiated directly and defines methods that other classes must implement.

```crystal
class Basic
  def initialize(@name : String)
  end

  def say
    puts "Hi, I'm #{@name}"
  end
end

b = Basic.new("Ana")
b.say

class Info
  getter name
  setter age

  def initialize(@name : String, @age : Int32)
  end
end

i = Info.new("João", 25)
puts i.name
i.age = 26

class Data
  property count : Int32

  def initialize
    @count = 0
  end
end

d = Data.new
d.count += 1
puts d.count

class Counter
  getter value

  def initialize
    @value = 0
  end

  def add
    @value += 1
    self.show
  end

  def show
    puts "Value: #{@value}"
  end
end

c = Counter.new
c.add

class Animal
  def speak
    puts "Some sound"
  end
end

class Dog < Animal
  def speak
    puts "Woof!"
  end
end

dog = Dog.new
dog.speak

abstract class Being
  abstract def speak
end

class Person < Being
  def speak
    puts "Hello!"
  end
end

a = Person.new
a.speak
```

```
$ crystal run classes.cr

Hi, I'm Ana
João
1
Value: 1
Woof!
Hello!
```

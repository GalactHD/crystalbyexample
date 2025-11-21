class Basic
  def initialize(@name : String)
  end

  def say
    puts "Hi, I'm #{@name}"
  end
end

b = Basic.new("Anna")
b.say

class Info
  getter name
  setter age

  def initialize(@name : String, @age : Int32)
  end
end

i = Info.new("Carl", 25)
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

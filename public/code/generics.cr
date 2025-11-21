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

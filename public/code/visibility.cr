module SausageFactory
  private RECIPE = "Onyx shards"

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

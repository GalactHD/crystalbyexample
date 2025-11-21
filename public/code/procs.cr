r = -> { 1 + 1 }

puts r.call

pow2 = ->(n : Int32) { n ** 2 }

puts pow2.call(5)

sum ->(a : Int32, b : Int32) { a + b }
puts sum.call(77, 33)

r = -> { 1 + 1 }

puts r.call

pow = ->(n : Int32, pow : Int32) { n ** pow }

puts pow.call(5, 2)

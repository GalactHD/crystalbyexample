def sum(a, b)
  a + b
end

spawn do
  puts "Fiber 1!"
end

spawn do
  puts sum(5, 5)
end

spawn do
  5.times do |i|
    puts i
  end
end

puts "The main thread"

Fiber.yield

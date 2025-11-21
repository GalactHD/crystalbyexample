arr = [1, 2, 3, 4]

arr.each do |i|
  puts i
end

h = 3

while h < 3
  h += 1
  puts h
end

n = 0

until n >= 3
  n += 1
  puts n
end

while true
  # runs for eternity
end

loop do
  # similar to while true but without conditions
end

ab = 0

while ab < 5
  ab += 1
  if ab == 2
    puts "2!"
    next
  end

  if ab == 3
    puts ab
    break
  end
end

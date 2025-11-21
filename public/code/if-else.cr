a = 5

if a > 10
  puts "a is bigger than 10!"
end

unless a > 10
  puts "a is not bigger than 10!"
end

if a >= 6
  puts "a is equal or bigger than 6"
else
  puts "a is not equal or bigger than 6"
end

y = a * 2

if a == y
  puts "a is equal to y"
elsif a >= y
  puts "a is equal or bigger than y"
else
  puts "a have no correlation with y"
end

b = 2 < 3 ? 3 : 4
b = 5 if a < y

puts b
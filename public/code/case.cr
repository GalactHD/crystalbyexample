a = 5

case a
when 3
  puts "a is two"
when 5
  puts "a is five"
else
  puts "what is 'a'?"
end

y = 5 if 3 > 2

case y
when 5
  puts "y is 5"
else
  puts "y is somenthing."
end

x = a + 5

case x
when Bool, String   then puts "It's a boolean or string."
when Int32, Float32 then puts "It's a integer or float."
end

def hello
  puts "Hello, World!"
end

hello

def hello(name)
  puts "Hello, #{name}"
  return name
end

saudation = hello("Ricardo")
puts saudation

def is_even?(num)
  if num % 2 == 0
    puts "Is even!"
  else
    puts "Is odd!"
  end

  num
end

my_number_is_even = is_even?(4)
puts my_number_is_even

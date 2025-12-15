---
title: Blocks
order: 11
nextExample:
  - procs
---

Blocks are pieces of code that you pass to methods, allowing the method to execute that code whenever it wants. They can receive arguments and return values, functioning like anonymous functions.

`yield` is the way a method calls a block passed to it, and it is necessary for blocks to be executed.

Blocks have two syntaxes: one using braces `{}` and another using `do` and `end`, each having its own scope.

Blocks accept parameters, which can have specified types.

```crystal
def print_block
  puts yield
end

print_block do
  "do end"
end

print_block { "New syntax" }

def greet(name)
  yield name
end

greet "Ricardo" do |name|
  puts name
end

greet "Carl" { |name| puts name }

def number_operation(a, b)
  return if a.zero? || b.zero?
  yield(a, b)
end

sum = number_operation 5, 3 do |a, b|
  a + b
end

puts sum

def repeat(n : Int32)
  n.times do
    yield
  end
end

repeat 5 do
  puts "I'm repeating"
end
```

```
crystal run blocks.cr

do end
New syntax
Ricardo
Carl
8
I'm repeating
I'm repeating
I'm repeating
I'm repeating
I'm repeating
```

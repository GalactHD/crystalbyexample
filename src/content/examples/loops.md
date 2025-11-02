---
title: Loops
order: 7
nextExample:
  - arrays
---

Loops, iterations, or repetition structures are a programming concept that allows a block of code to be repeated based on boolean conditions (true or false). They are part of the control flow in many programs.

In Crystal, there are several ways to create loops, such as using `while`, `until`, `loop`, and `each`. Crystal does not have a `for` structure like other languages, but there are alternatives.

The `each` loop is mainly used with arrays.

`while` is commonly used to run code until a certain condition becomes false.

`loop` and `while` are similar, but `while` requires conditions to be true in order to run, whereas `loop` runs automatically.

`next` is used to skip to the next iteration, and `break` stops the iteration.

```crystal

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
```

```
$ crystal run loops.cr

1
2
3
4
1
2
3
2!
3
```
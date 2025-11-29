---
title: Case
order: 6
nextExample:
  - loops
---
`case` is a flow control structure based on conditions. This structure allows writing multiple conditions without using multiple `if`s, which makes the code cleaner.

`case` has the `when`, which gives the condition; if it is true, the code is executed. The `else` comes at the end in case none of the conditions are true.

The use of `then` allows the `case` structure to be written on just one line, and to compare several conditions in the same `when`, a comma is used.

```crystal
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
```

```
$ crystal run case.cr

a is five
y is 5
It's a integer or float.
```

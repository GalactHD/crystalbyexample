---
title: Variables
order: 3
nextExample:
  - constants
---

Variables are a way to store data in programming. In Crystal, declaring a variable is simple, you just need to give it a name and assign a value. 

The language automatically infers the type of the variable based on the value you provide.

You can also declare multiple variables at once, and a variable can store the value of another variable.

Although Crystal performs type inference, it is a statically typed language, which means you can also explicitly specify the type of a variable. If you declare a type and try to assign a value of a different type, the compiler will produce an error.

```crystal
name = "Carl"
first_name, surname = name, "Willians"

puts first_name
puts surname

x = 40
y = x * 2

puts x + y

r = true
q = false

puts r && q
```

```
$ crystal run variables.cr

Carl
Willians
120
false
```
---
title: Variables
order: 3
nextExample:
  - constants
---
Variables is a way in programming that allows to store data, in Crystal, variables are straightfoward, only requires the name and value.

And the language automatically infers the type.

Crystal allows multi variables at once, and variables can hold other variable values.

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
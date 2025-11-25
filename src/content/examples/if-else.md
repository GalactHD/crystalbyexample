---
title: If/Else
order: 5
nextExample:
  - loops
---

import { Code } from 'astro-expressive-code/components'
import { loadCode } from '../../utils/load-code'

The `if` and `else` structures are conditional structures; they check whether a value is true or false and execute code based on that. Crystal has `if`, `else`, and `unless` to handle conditions.

The `if` and `unless` structures do not depend on `else`, which means you don’t need to use `else` every time.

`unless` is the opposite of `if`.

`elsif` is a sub-structure that is optional but is used to handle another `if` when the first condition is false. There can be many `elsif` statements in the code.

Crystal also has ternary operators, which are a short version of `if` `else`. The language also supports suffix conditions, allowing values to be assigned conditionally.

```crystal
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
```

```
$ crystal run if-else.cr

a is not bigger than 10!
a is not equal or bigger than 6
a have no correlation with y
5
a is not bigger than 10!
a is not equal or bigger than 6
a have no correlation with y
5
```

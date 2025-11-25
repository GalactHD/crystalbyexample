---
title: Constants
order: 4
nextExample:
  - if-else
---

Constants are variables, but immutable, changing them in any way is not possible. In Crystal, constants are declared like variables, but in UPPERCASE.

```crystal
PI = 3.145
TAU = PI * 2
NAME = "CONSTANTS"
TRUE = false

puts PI
puts TAU
puts NAME
puts !TRUE
```

```
$ crystal run constants.cr

3.145
6.29
CONSTANTS
true
```

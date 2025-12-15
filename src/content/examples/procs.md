---
title: Procs
order: 12
nextExample:
  - classes
---

Procs (or closures) are anonymous functions that you store in variables and call later. They work just like small methods, they can take parameters, return values, and run any code you put inside.

When a proc has parameters, their types must be explicitly declared, which keeps the code safe and easy for the compiler to optimize.

Procs can also capture variables from the surrounding scope, making them useful for callbacks, small reusable computations, and "functional style" patterns.

```crystal
r = -> { 1 + 1 }
puts r.call

pow = ->(n : Int32, exp : Int32) { n ** exp }
puts pow.call(5, 2)

def apply_to_10(f : Proc(Int32, Int32))
  puts f.call(10)
end

add5 = ->(x : Int32) { x + 5 }
apply_to_10(add5)

factor = 3
mul = ->(x : Int32) { x * factor }
puts mul.call(4)

ops = [
  ->(x : Int32) { x + 1 },
  ->(x : Int32) { x * 2 },
]

value = 5
ops.each { |op| value = op.call(value) }
puts value
```

```
$ crystal run procs.cr

2
25
15
12
12
```

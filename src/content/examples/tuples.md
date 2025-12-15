---
title: Tuples
order: 8
nextExample:
  - hash-maps
---

Tuples are a sequence of values with a fixed size and are immutable. They are declared using braces.

Tuples can contain multiple data of different types.

By using the class directly, it is possible to create a tuple; this does not differ except in the way it is created.

The `clone` method allows you to clone values of a tuple.

```crystal
tuple = {1, 2, 3}
tuple_2 = {tuple, 'h', 3.14}

puts tuple, tuple_2

tuple_new = Tuple.new("a", "b", 1, true)
puts tuple_new

a = tuple_new.clone
puts a
```

```
$ crystal run tuples.cr

{1, 2, 3}
{{1, 2, 3}, 'h', 3.14}
{"a", "b", 1, true}
{"a", "b", 1, true}
```

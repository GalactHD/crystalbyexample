---
title: Arrays
order: 7
nextExample:
  - tuples
---
Arrays are a data structure that hold ordered elements and organize them with zero-based indexing.

Crystal arrays can hold multiple types at once, and these arrays are mutable. Arrays in Crystal are generic, meaning they can accept various types. It is possible to check which types are present using `typeof`, which will display in the console the types that make up the array.

The `<<` operator is called the append operator; it adds a new element to the end of the array. The same effect can also be achieved with the `.push` method.

To access an element, simply specify its index. Negative indices return elements starting from the end of the array.

Empty arrays need to have explicit types, whether they are strings or integers; otherwise, an error will occur.

To access the number of elements in the array, you can use `.size`.

```crystal
planets = ["Mercury", "Venus"]

puts typeof(planets)

planets << "Earth"
planets << "Mars"
planets.push("Ceres")

puts planets
puts planets[0]

constants = [] of Float32 | Int32

constants << 3.145
constants.push(2.718)
constants.push(1)

puts constants.size
puts constants
```

```
$ crystal run arrays.cr

["Mercury", "Venus", "Earth", "Mars", "Ceres"]
Mercury
3
[3.145, 2.718, 1]
```

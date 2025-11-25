---
title: Hash Maps
order: 9
nextExample:
  - methods
---

Hash Maps, hashes, dictionaries, or maps are key–value data structures, where the key represents a name or address that points to a value. In Crystal, this structure is called a Hash Map.

Values can be retrieved using `name["key"]`.

Empty Hash Maps must have their types specified, otherwise an error occurs. To add values to an empty Hash Map, you simply access a key and assign a value to it.

Hash Maps have some validation methods, such as `has_key`, which checks whether a specific key exists, and `has_value`, which checks for a value.

Like almost any data structure, they can be iterated.

```crystal
consts = {"e" => 2.718, "pi" => 3.145}

puts consts["e"]
puts consts["pi"]

s = {} of String => String

puts typeof(s)

s["name"] = "Carl"
s["lang"] = "Crystal"

puts s["name"]
puts s.has_key?("lang")
puts s.has_value?("Carl")

s.each do |k, v|
  puts "#{k}: #{v}"
end

```

```
$ crystal run hash-maps.cr

2.718
3.145
Hash(String, String)
Carl
true
true
name: Carl
lang: Crystal
```

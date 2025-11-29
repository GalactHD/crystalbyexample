---
title: Exceptions
order: 16
nextExample:
  - custom-exceptions
---
Errors are a fundamental part of software development and are important for diagnosing problems. They should not be avoided, they should be used to solve a problem.

In Crystal, errors can be raised using the `raise` keyword, which immediately stops the program when the error occurs. They support both messages and classes that inherit from the `Exception` class.

```crystal
loop do
  input = gets

  case input
  when nil
    break
  when ""
    puts "Insert somenthing!"
  else
    if input.chomp == "hi"
      raise "Cannot say hi"
    elsif input == "hello"
      raise "Cannot say hello"
    else
      puts "bonjur"
    end
  end
end
```

```
$ crystal run exceptions.cr

hi
Unhandled exception: Cannot say hi! (Exception)
  from exceptions.cr:12 in '__crystal_main'

```
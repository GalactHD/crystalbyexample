---
title: Custom Exceptions
order: 18
nextExample:
  - fibers
---

Exceptions are good, but there are times when it is necessary to have specific exceptions, such as an operation involving a database, login, or even file uploads.

To define a custom exception, you use the `Exception` class by inheriting from it. This way, it can be used with the `raise` keyword and by initializing the class.

```crystal
class Error < Exception
end

class CannotUseFakeE < Error
end

E = 2.71

if E <= 2.72
  raise CannotUseFakeE.new("Cannot use the fake E where!")
end
```

```
$ crystal run custom-exceptions.crystal

Unhandled exception: Cannot use E (2.72) where! (CannotUseE)
  from custom-exceptions.cr:10 in '__crystal_main'
```
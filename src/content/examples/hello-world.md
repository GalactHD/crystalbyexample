---
title: Hello World
order: 1
nextExample:
  - values
---

A Hello World in Crystal is simple, just use the `puts` method to print values in the console.

You can use the Crystal compiler `crystal run` to run code directly.

```crystal
puts "Hello, World!"
```

```
$ crystal run hello-world.cr

Hello, World!
```

If you want to generate a binary, compile and run the program using the crystal build command. The compiler will generate an executable, and you can also use additional options such as the `--release` flag to compile the program with optimizations.

```
$ crystal build --release hello-world.cr

./hello-world

Hello, World!
```

---
title: Hello World
order: 1
nextExample:
  - values
---

Um "Hello, world" em Crystal é simples, basta apenas usar o método `puts` para imprimir valores no console.

Você pode usar o compilador do Crystal `crystal run` para rodar o código diretamente, ou compilar e rodar com  o comando `crystal build`.

```crystal
puts "Hello, World!"
```

```
$ crystal run hello-world.cr

Hello, World!

$ crystal build hello-world.cr

./hello-world

Hello, World!
```

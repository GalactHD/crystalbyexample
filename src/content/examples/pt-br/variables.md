---
title: Variáveis
order: 3
nextExample:
  - constants
---

Variáveis são uma maneira de guardar dados na programação, no Crystal, variavéis são diretas, apenas necessitando do nome e do valor.

E a linguagem automaticamente infere os tipos.

Crystal permite várias variáveis de uma vez, e uma variável pode guardar valores de outras variáveis.

Crystal é uma linguagem com tipos estáticos, isso faz que seja possivel especificar tipos as variáveis, perceba-se que se adicionar um tipo, mas atribuir outro, ocorrerá um erro.

```crystal
nome = "João"
primeiro_nome, sobre_nome = nome, "Souza"

puts primeiro_nome
puts sobre_nome

x = 40
y = x * 2

puts x + y

r : Bool = true
q : Bool = false

puts r && q
```

```
$ crystal run variaveis.cr

João
Souza
120
false
```

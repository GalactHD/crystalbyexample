---
title: JSON
order: 23
nextExample:
  - yaml
---

Crystal has built-in support for [JSON](https://json.org) format, you can serialize, decoding, etc. This is possible with the `json` module.

JSON strings can be created with `%({ "key": "value" })`. The `JSON.parse` method allows transform JSON values into Crystal values like JSON object to Crystal Hash, for example.

The `.to_json` method allows transform some Crystal data structures into JSON data structures.

```crystal
require "json"

json_string = %({ "Hello": "World"})
hash = JSON.parse(json_string)

puts hash["Hello"]

arr_json = [1, 2, 3, :four].to_json

puts arr_json
```

```
$ crystal run json.cr

World
[1,2,3,"four"]
```

Crystal allows to build structured JSON with `JSON.build`. The `build` method is a block, and has methods for building arrays, fields and more.

```crystal
require "json"

config_object = JSON.build do |json|
  json.object do
    json.field "name", "test-bot"
    json.field "meta" do
      json.field "bio", "insert text here"
    end
    json.field "values" do
      json.array do
        json.number 1
        json.number 2
        json.number 3
      end
    end
  end
end

puts config_object
```

```
$ crystal run json_build.cr

{"name":"test-bot","meta":"bio","insert text here":4,"values":[1,2,3]}
```

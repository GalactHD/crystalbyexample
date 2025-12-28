---
title: JSON
order: 23
isLast: true
nextExample:
  - nothing
---

Crystal has built-in support for [JSON](https://json.org) format, you can serialize, decoding, etc. This is possible with the `json` module.

JSON strings can be created with `%({ "key": "value" })`. The `JSON.parse` method allows transform JSON values into Crystal values like JSON object to Crystal Hash, for example.

The `.to_json` method allows transform some data structures into JSON data structures.

Crystal allows to build structured JSON with `JSON.build`.

Read more about the JSON module [here](https://crystal-lang.org/api/1.18.2/JSON.html).

```crystal
require "json"

json_string = %({ "Hello": "World"})
hash = JSON.parse(json_string)

puts hash["Hello"]

arr_json = [1, 2, 3, :four].to_json

puts arr_json

config_object = JSON.build do |json|
  json.object do
    json.field "name", "test-bot"
    json.field "meta" do
      json.field "bio", "insert text here"
      json.field "favorite_number", json.number 4
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

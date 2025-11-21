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

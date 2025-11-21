class Error < Exception
end

class CannotUseFakeE < Error
end

E = 2.71

if E <= 2.72
  raise CannotUseFakeE.new("Cannot use the fake E where!")
end

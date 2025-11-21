class Error < Exception
end

class CannotUseE < Error
end

E = 2.72

if E
  raise CannotUseE.new("Cannot use E (2.72) where!")
end

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

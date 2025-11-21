enum Status
  Ok
  Warning
  Error
end

s = Status::Ok
puts s.value

case s
when Status::Ok
  puts "status ok"
when Status::Warning
  puts "warning"
when Status::Error
  puts "err!"
end

enum PlayerState : UInt32
  Alive = 1
  Dead
end

puts PlayerState::Dead.value

def check_state(state : PlayerState)
  puts "Player is: #{state}"
end

check_state PlayerState::Alive
check_state :dead

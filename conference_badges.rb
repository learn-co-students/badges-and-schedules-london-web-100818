def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  array_of_badges = []
  speakers.each { |speaker|
    badge = badge_maker(speaker)
    array_of_badges << badge
  }
  array_of_badges
end

def assign_rooms(speakers)
  room_msg = []
  speakers.each_with_index { |name, room|
    message = "Hello, #{name}! You'll be assigned to room #{room + 1}!"
    room_msg << message
  }
  room_msg
end

def printer(speakers)
  badges = batch_badge_creator(speakers)
  rooms = assign_rooms(speakers)
  
  badges.each_with_index { |badge, idx|
    puts badge
    puts rooms[idx]
  }
end

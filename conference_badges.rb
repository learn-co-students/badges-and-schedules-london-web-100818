# Write your code here.
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  badge = []
  array.each do |name|
    badge.push("Hello, my name is #{name}.")
  end
  return badge
end

def assign_rooms(speakers)
  array = []
    speakers.each_with_index do |speaker, index|
    array.push("Hello, #{speaker}! You'll be assigned to room #{index+1}!")
  end
  array
end

def printer(names)
  batch_badge_creator(names).each do |greeting|
    puts greeting
  end
  assign_rooms(names).each do |room|
    puts room
  end
end

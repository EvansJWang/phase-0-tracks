nails_to_paint = ['thumb', 'pointer', 'middle','ring','pinky']

nails_to_paint = { 
  thumb: "not painted",
  pointer: "not painted",
  middle: "not painted",
  ring: "not painted",
  pinky: "not painted"
}
=begin
index = 0
while index < nails_to_paint.length 
  puts "the #{nails_to_paint[index]} nail is painted!"
  index += 1
end
=end

nails_to_paint.each do |nail, paint|
  # nail is each nail in turn ... thumb then pointer etc.
  p "the #{nail} nail is #{paint}"
end

letters = ["a","b","c","d","e"]
new_letters = []

p "original data:"
p letters

letters.each do |eachletter|
  new_letters << eachletter.next
end

p "After .each call:"
p letters
p new_letters



numbers = { 
  1 => "one", 
  2 => "two", 
  3 => "three"
}


numbers.each do |digit, word|
  p "#{digit} is spelled out at #{word}"

end
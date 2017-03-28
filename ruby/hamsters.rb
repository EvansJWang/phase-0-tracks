puts "What's the hamster name?"
hamster_name = gets.chomp
puts "On a scale of 1 to 10 how loud is #{hamster_name}?"
loudness = gets.chomp
puts "What color is #{hamster_name}?"
color = gets.chomp
puts "Would you take #{hamster_name} home? (y/n)"
adopability = gets.chomp
puts "How old do you think homeboy is?"
age = gets.chomp

if 
  age.to_i > 0
  puts "#{age}"
else
  age = nil
end

puts "#{age}"


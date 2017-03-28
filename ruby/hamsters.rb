puts "What's the hamster name?"
hamster_name = gets.chomp
puts "On a scale of 1 to 10 how loud is #{hamster_name}?"
loudness = gets.chomp
loudness.to_i
puts "What color is #{hamster_name}?"
color = gets.chomp
puts "Would you take #{hamster_name} home? (yes/no)"
adopability = gets.chomp
puts "How old do you think homeboy is?"
age = gets.chomp

if 
  age.to_i > 0
  puts "#{age}"
else
  age = nil
end

puts "Name is #{hamster_name}"
puts "loud facter = #{loudness}"
p "Hamster color is #{color}"
p "Is hamster super awesome? #{adopability}"
puts "Age is #{age}"

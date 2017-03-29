puts "What's your name?"
name = gets.chomp
p "How old are you?"
age = gets.chomp.to_i
p "What year were you born?"
birthyear = gets.chomp.to_i
p "Our company cafeteria serves garlic bread. Should we order some for you? "
garlicbread = gets.chomp
p "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp


  if age == (2017 - birthyear)
    vampstatus = true
    puts "Probably not a vampire"
  else 
    puts "Definitely a vampire"
  end


#&& (#{garlicbread} == yes && #{insurance}  == yes)

  
  puts "how many employees will be proceesed  ?"
  numemployees = gets.chomp.to_i

 
until numemployees == 0
    numemployees -= 1

  
  puts "What's your name?"
  name = gets.chomp
  p "How old are you?"
  age = gets.chomp.to_i
  p "What year were you born?"
  birthyear = gets.chomp.to_i
  p "Our company cafeteria serves garlic   bread. Should we order some for you? "
  garlicbread = gets.chomp
  p "Would you like to enroll in the   company's health insurance?"
  insurance = gets.chomp
  
  

  
      if
        garlicbread === "yes" && insurance   === "yes" && age == (2017 -   birthyear) 
        vampstatus = true
        puts "Probably not a vampire"
      elsif     age == (2017 - birthyear) &&     (garlicbread == "no" || insurance   ==   "no")
      vampstatus = true
        puts "Probably a vampire"
      elsif name =="Drake Cula"
      vampstatus = true
      puts "Definitely a vampire"
      elsif name == "Tu Fang"
      vampstatus = true
      puts "Definitely a vampire"
      else
        puts "Results inconclusive"
        vampstatus=true
      end


allergies = FALSE
until allergies 

p "What are you allergic to?"
allergy = gets.chomp

  if allergy == "nothing"
    allergies = TRUE
    p "Awesome"
  elsif allergy == "sunshine"
    allergies = TRUE
    p "Probably a vampire"
  elsif 
   allergy == "done"
   allergies = TRUE
   puts "Thanks for the allergy list"
  else 
    puts "Any other allergies? If not then type 'done' "
  end
  
end
end
  puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."


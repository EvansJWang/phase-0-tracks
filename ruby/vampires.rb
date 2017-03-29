
  
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
end
#end  -- placeholder for until 

  puts "Actually, nevermind! What do these questions have to do with anything? Let's all be friends."


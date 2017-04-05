#Interior Designer Application
jobapplication = {
  name: "",
  address: "",
  Email: "",
  Phone: "",
  Fave_blue: "",
  Wallpaper_pref: "",
  Ombre_is: ""
}

puts "Interior Designer Job Application"
p "What is your name?"
jobapplication[:name] = gets.chomp
p "Your address?"
jobapplication[:address] = gets.chomp
p "Email?"
jobapplication[:email] = gets.chomp
p "Phone?"
jobapplication[:email] = gets.chomp
p "favorite blue? Please list all that apply:
  Paisley, Chevrons, Photorealistic woodsy scene"
jobapplication[:email] = gets.chomp
p "Thoughts on Ombre? Type all that apply, Fierce, so last season or medieval"
jobapplication[:email] = gets.chomp

p jobapplication

#Opportunity to update a key If "none" then skip

#If applicant wants to add "decor_theme" ask for new value and input
#Add it to :decor_theme
#Strings have methods that will turn them into symbols

# Allows user to update info
p "did you want to update anything?"
  update_needed = gets.chomp
if update_needed == "yes"
  p 'what did you want to update?'
    update_category = gets.chomp
  
    if update_category == "name"
      p "what is your name?"
        jobapplication[:name] = gets.chomp
        elsif update_category == "address"
      p "what is your address?"
        jobapplication[:address] = gets.chomp
        elsif update_category == "email"
      p "what is your email?"
        jobapplication[:email] = gets.chomp elsif update_category == "favorite blue"
      p "what is your favorite shade of blue?"
        jobapplication[:Fave_blue] = gets.chomp 
        elsif update_category == "wallpaper"
      p "what is your preferred wallpaper?"
        jobapplication[:Wallpaper_pref] = gets.chomp 
        elsif update_category == "ombre"
      p "what are your ombre thoughts?"
        jobapplication[:ombre] = gets.chomp 
       update_category == "none"
            p "Thanks for getting it right the first time"
# Allows designers to add a decor theme to the hash
        elsif update_category == "decor theme"
        p "What did you want your decor theme to be?"
        jobapplication[:decor_theme] = gets.chomp
      else p 'Guess you dont need to update'
    end
   else p 'thank you'
end 
p jobapplication


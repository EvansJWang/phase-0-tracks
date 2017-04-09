# Take string "felicia torres" and change string according to:
# 1. swap the first and last name 
  # make array of the first and last name.
  # change index 0 to index 1 and vice versa
# 2. change all the vowels(a,e,i,o,u) to next vowel 
 #   2a. add to method for upcase characters
  # create a variable that lists only vowels 
# 3. change all consonants to the next consonant.
 #   3a add to method for upcase characters 
  # create a variable that lists only alphabet
# 4. combine the methods

# method to swap first name with last name
# split the first name and last name 
# method to swap first name with last name
# split the first name and last name 

def nameswap(x)
  if  x.include?(" ") != true # check if there is a space, if none then just reverse name for fun!
   x.reverse!
  else
   name = "#{x}".split(' ')
   #Switch the order of first and last name 
  name.reverse!
  #create a string from the array and add the space between the first and last name
  swapped_name = name[0] + " " + name[1]
  #Assign vowels to varible in an array
  vowels = ["a","e","i","o","u","a"]# added extra "a" to account for "u"
  #Assign upcase vowels to variable in an array 
  upcase_vowels = ["A","E","I","O","U","A"]# added extra "A" to account for "U"
  #Assign consonants to varible
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z","b"]# added extra "b" to account for "z"
  #Assign upcase consonants to variable
  upcase_consonants = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z","B"]# added extra ""B to account for Z
  index = 0
  while index < swapped_name.length
    #Add conditional statement to check if current position in word isn't a space.
    #If there is a space, move on to next letter
    #Conditional statement to check if it is a vowel 
    if (swapped_name[index] != " ") && consonants.include?(swapped_name[index])
      #Find position in the vowel of the current letter and add 1 to it to get index of next vowel
      new_index = consonants.index(swapped_name[index])
      #replace the vowel with next vowel
      swapped_name[index] = consonants[(new_index+1)]
     elsif upcase_consonants.include?(swapped_name[index])
      new_index = upcase_consonants.index(swapped_name[index])
      swapped_name[index] = upcase_consonants[(new_index+1)]
      #Vowel changer
      elsif vowels.include?(swapped_name[index]) #checks if the letter at the current index is included in the array
      #Find position in the vowel of the current letter and add 1 to it to get index of next vowel
      new_index = vowels.index(swapped_name[index])
      #replace the vowel with next vowel
      swapped_name[index] = vowels[(new_index+1)]
      #Add conditional check if the vowel is upcase and replace with upcase vowel
    elsif upcase_vowels.include?(swapped_name[index])
      new_index = upcase_vowels.index(swapped_name[index])
      swapped_name[index] = upcase_vowels[(new_index+1)]
    end
    index += 1 
 end
   return swapped_name
end
end # end first if 

p nameswap("Felicia Torres")

alias_database = [] # empty array to feed names to



=begin
def vowels(word)
  #Assign vowels to varible in an array
  vowels = ["a","e","i","o","u"]
  #Assign upcase vowels to variable in an array
  upcase_vowels = ["A","E","I","O","U"]
  index = 0
  while index < word.length
    #Add conditional statement to check if current position in word isn't a space.
    #If there is a space, move on to next letter
    #Conditional statement to check if it is a vowel 
    if  (word[index] != " ") && vowels.include?(word[index]) #checks if the letter at the current index is included in the array
      #Find position in the vowel of the current letter and add 1 to it to get index of next vowel
      new_index = vowels.index(word[index])
      #replace the vowel with next vowel
      word[index] = vowels[(new_index+1)]
      #Add conditional check if the vowel is upcase and replace with upcase vowel
    elsif upcase_vowels.include?(word[index])
      new_index = upcase_vowels.index(word[index])
      word[index] = upcase_vowels[(new_index+1)]
    end
    index += 1
  end
  #Output the result
  return word
end

p vowels("yEs sir!")



def consonants(word)
  #Assign consonants to varible
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  #Assign upcase consonants to variable
  upcase_consonants = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]
  index = 0
  while index < word.length
    #Add conditional statement to check if current position in word isn't a space.
    #If there is a space, move on to next letter
    #Conditional statement to check if it is a vowel 
    if  (word[index] != " ") && consonants.include?(word[index])
      #Find position in the vowel of the current letter and add 1 to it to get index of next vowel
      new_index = consonants.index(word[index])
      #replace the vowel with next vowel
      word[index] = consonants[(new_index+1)]
     elsif upcase_consonants.include?(word[index])
      new_index = upcase_consonants.index(word[index])
      word[index] = upcase_consonants[(new_index+1)]
    end
    index += 1
  end
  #Output the result
  return word
end

p consonants("yes SiR!")

=end


# # Release 1
# ### USER INTERFACE

# loop through name and output "name changer method" until user types 'quit' 
# need to create an array & push method's answer into
# print array

# puts "What is your name?"
# agent_name = gets.chomp


puts "Whats your name? First and Last"
agent_name = gets.chomp
p "Do you want me to give you your secret agent name? type 'quit' to stop"
scramble = gets.chomp
until scramble == "quit"
   nameswap(agent_name)
   p "#{nameswap(agent_name)} is actually #{agent_name}"
    alias_database << nameswap(agent_name)
  p "Another name? type 'quit' to stop"
    scramble && agent_name = gets.chomp
    break if agent_name == "quit" # NEED to break code if user types quit. otherwise "quit" will run in method
end

p alias_database




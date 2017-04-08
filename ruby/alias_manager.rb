# Take string "felicia torres" and change string according to:
# 1. swap the first and last name 
  # make array of the first and last name.
  # change index 0 to index 1 and vice versa
# 2. change all the vowels(a,e,i,o,u) to next vowel 
  # create a variable that lists only vowels 
# 3. change all consonants to the next consonant.
  # create a variable that lists only alphabet

  # idea from last project.

# method to swap first name with last name
# split the first name and last name 
 def nameswap(x)
   name = "#{x}".split(' ')
   #Switch the order of first and last name 
  name.reverse!
  #create a string from the array and add the space between the first and last name
  swapped_name = name[0] + " " + name[1]
  return swapped_name
 end

p nameswap("Evans Wang")

def letter_changer(word)
    #Assign vowels to varible in an array
  vowels = ["a","e","i","o","u"]
  #Assign upcase vowels to variable in an array
  upcase_vowels = ["A","E","I","O","U"]
  #Assign consonants to varible
  consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
  #Assign upcase consonants to variable
  upcase_consonants = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]
  index = 0
  while index < word.length
    #Add conditional statement to check if current position in word isn't a space.
    #If there is a space, move on to next letter
    #Conditional statement to check if it is a vowel 
    if (word[index] != " ") && consonants.include?(word[index])
      #Find position in the vowel of the current letter and add 1 to it to get index of next vowel
      new_index = consonants.index(word[index])
      #replace the vowel with next vowel
      word[index] = consonants[(new_index+1)]
     elsif upcase_consonants.include?(word[index])
      new_index = upcase_consonants.index(word[index])
      word[index] = upcase_consonants[(new_index+1)]
      #Vowel changer
      elsif vowels.include?(word[index]) #checks if the letter at the current index is included in the array
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

p letter_changer("yes SiR! HeLlOo")


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

# loop through name and output "name changer method" until user types 'quit' or enters ''

# puts "What is your name?"
# agent_name = gets.chomp

# p nameswap(agent_name)




# #Release 2


#Release 0
# check for upper case on vowels and consonants
#   write separate method for uppercasees and replace with uppercase
#   ex: check for "E" and replace with "I" but if input is "e" replace with "i"
#   
# create a class Name_game
# name game will take a user input of a word
# Then ask for another player(user_input) for letters
# if the letter is in the word, print the location of the letter in the word
# Print a congratulatory message if user gets all letters correct

# Player 2 (guesser) only has a limited number of guesses based on length of word

### GAME

class Name_game
   attr_accessor :word
   attr_accessor :guess_count
   attr_reader :is_over

  def initialize
    @word = "theory"
    @guess_count = 0
    @hint = ""
    # @is_over = false
  end

  def word_to_guess(word_to_guess)
    @word = word_to_guess
  end

  def length
    @word.length    
  end

  def split
    @word.split('')
  end

  def include?(letter)
    @word.include?(letter)
  end

  def guess_counter
    @guess_count += 1
  end

  def letter_check(letter_guess)
    i = 0
        while i < word.length
        if word.include?(letter_guess)
          while i < word.length 
            if letter_guess == word[i]
            @hint[i] = letter_guess
            else  @hint[i] = "_"
            end
          i += 1
         # break if letter_guess == word
          end
        p @hint
         else
         p "guess another letter"
         i += 1
         letter_guess = gets.chomp
         # i +=1 
        end
      end
  end
end

#   def letter_check(letter_guess)
#     i = 0
#     # @guess_count += 1 
#     if word.include?(letter_guess)
#       while i < word.length 
#           if letter_guess == word[i]
#           @hint[i] = letter_guess
#           else  @hint[i] = "_"
#           end
#         i += 1
#       end
#     p @hint
#     else
#     p "try another letter"
#     end
#   end
# end
## USER INTERFACE

puts " Welcome to Hangman basic "
name_game = Name_game.new

puts " What word do you want to player 2 to guess?"
word = gets.chomp
name_game.word_to_guess(word)


puts "Player 2 enter a letter to see if it is in the word"
letter = gets.chomp
guesses = 0
until guesses == (name_game.word_to_guess(word).length + 2)
  name_game.letter_check(letter)
  puts "guess another letter"
  letter = gets.chomp
  guesses += 1
  if guesses == (name_game.word_to_guess(word).length + 2)
    p "didnt make it! sorry :("
  end
  if letter == word 
    p "nailed it! good job"
     guesses = (name_game.word_to_guess(word).length + 2)
  end
end




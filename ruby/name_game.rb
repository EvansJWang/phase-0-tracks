# create a class Name_game
# name game will take a user input of a word
# Then ask for another player(user_input) for letters
# if the letter is in the word, print the location of the letter in the word
# Print a congratulatory message if user gets all letters correct

# Player 2 (guesser) only has a limited number of guesses based on length of word

### GAME

class Name_game
   attr_accessor :word
   attr_reader :guess_count, :is_over

  def initialize
    @word = "word"
    @guess_count = 0
    # @is_over = false
  end

  def word_to_guess(word_to_guess)
    word = word_to_guess
  end

  def length
    @word.length    
  end

  def split
    @word.split('')
  end
  

def letter_check(letter_guess)
  i = 0
  # if word.include?(letter_guess)
    while i < word.length 
      if letter_guess == word[i]
       word[i] = letter_guess
      else  word[i] = "_"
      end
     i += 1
    end
    p word
      # @guess_count += 1
  # else
  #     p "try another letter"

       # @guess_count += 1 
     end
end

## USER INTERFACE

puts " Welcome to Hangman basic "
name_game = Name_game.new

puts " What word do you want to player 2 to guess?"
word_to_guess = gets.chomp
word = word_to_guess.split('')

puts "Player 2 enter a letter to see if it is in the word"
letter = gets.chomp
name_game.letter_check(letter)

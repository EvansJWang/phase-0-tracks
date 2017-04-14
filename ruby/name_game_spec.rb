#RSpec
#  ' describe' block of each group of tests
  # 'it' block for each individual test
    # expect(<YOUR CODE>).to eq <RESULT>

# Take user input store it as a variable (word)

# Take user input of a letter and check if letter is in the (word)
# If the letter is in the word print location of the letter in the word

require_relative 'name_game'

describe Name_game do 
  it "takes user input store it as a variable" do 
    name_game = Name_game.new
    expect(name_game.word_to_guess("theory")).to eq "theory"
  end

  it "takes user input as a letter and checks if it is (word)" do 
    name_game = Name_game.new
    word = ["t", "h", "e", "o", "r", "y"]
    expect(name_game.letter_check("a")).to eq "try another letter"
    expect(name_game.letter_check("t")).to eq ["t", "_", "_", "_", "_", "_" ]
  end
end

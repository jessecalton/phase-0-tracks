require_relative 'game'

describe Hangman do
  let(:word) { Hangman.new("cheese") }

  it "prints out a list of dashes equal to the length of the word" do
    expect(word.print_dashes).to eq "_ _ _ _ _ _ "
   end

  it "calculates the number of guesses based on the length of the word." do
    expect(word.total_guesses). to eq 6
  end

   it "prints out the correct guessed letters" do
    expect(word.show_progress('e')).to eq "__ee_e"
  end
end

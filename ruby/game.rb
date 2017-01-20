class Hangman
  attr_reader :word, :display_string
  attr_accessor :guess_count
  def initialize(word)
    @word = word
    @guess_count = 0
  end
  
  def print_dashes
    '_ ' * @word.length
  end

  def show_progress(guessed_letters)
    display_string = ''
    @word.chars.each do |char|
      if guessed_letters.include?(char)
        display_string << char
      else 
        display_string << '_'
      end
    end
    @display_string = display_string
  end
    
end

  


# user interface

puts "Please type in a word!"
word = gets.chomp.downcase
hangman = Hangman.new(word)
p hangman.print_dashes
letters = []
while hangman.guess_count < 10 || hangman.display_string == hangman
  hangman.guess_count += 1
  puts "Player 1, guess a letter!"
  letter = gets.chomp.downcase
  letters << letter
  p letters
  hangman.show_progress(letters.join(''))
  p hangman.display_string
end
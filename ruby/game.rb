class Hangman
  attr_reader :word, :display_string, :is_over
  attr_accessor :guess_count
  def initialize(word)
    @word = word
    @guess_count = 0
    @is_over = false
  end
  
  def print_dashes
    '_ ' * @word.length
  end
  
  def total_guesses
    total_guesses = @word.length
    @total_guesses = total_guesses
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
while !hangman.is_over
  puts "Player 1, guess a letter!"
  letter = gets.chomp.downcase
  letters << letter
  hangman.show_progress(letters.join(''))
  p hangman.display_string
  if !hangman.display_string.include?(letter)
    hangman.guess_count += 1
  end
  if hangman.display_string == hangman.word
    puts "You win! Game's over!"
    break
  elsif hangman.guess_count == hangman.total_guesses
    puts "You fail!"
    puts "The secret word was #{hangman.word}."
    break
end
    


end
puts "Game over!"
class Puppy
  def initialize
    puts "initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_of_times)
    num_of_times.times do
      puts "Woof!"
      end
  end

  def roll_over
    puts "*roll over*"
  end

  def dog_years(human_years)
    p dog_years = human_years*7
  end

  def beg
    puts "pretty please!"
  end
end

class Kindergarten
  def initialize
  end

  def eat
    puts "snack time!"
  end

  def build_blocks
    puts "I'm building blocks!"
  end
end

max_children = 50
kindergarten_class = []
max_children.times do 
  kindergarten_class << Kindergarten.new 
end

kindergarten_class.each do |child|
  child.eat
  child.build_blocks
end
 

chompers = Puppy.new
chompers.speak(3)
chompers.roll_over
chompers.dog_years(10)
chompers.beg


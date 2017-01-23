class Dancer
  attr_reader :name
  attr_accessor :age, :card
  def initialize(name, age)
    @name = name
    @age = age
    @card = []
  end
  def pirouette
    p "*twirls*"
  end

  def bow
    p "*bows*"
  end

  def card
   @card
  end

  def queue_dance_with(dancer)
    @card << dancer
  end

  def begin_next_dance
    dancer_name = @card.slice!(0)
    "Now dancing with #{dancer_name}."
  end

  def dance_move(move)
    "#{@name} is doing the #{move} and the crowd goes wild!"
  end



end


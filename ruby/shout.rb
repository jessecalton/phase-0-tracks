# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# speaker = Shout
# speaker.yell_angrily("Get offa my property")
# speaker.yell_happily("Just kidding come back")

module Shout
  def thing_to_shout(words)
    puts "I am the coach of this basketball team, and I say #{words}!"
  end
end

class Offense
  include Shout
end

class Defense
  include Shout
end

offense = Offense.new
offense.thing_to_shout("run the pick-and-roll")

defense = Defense.new
defense.thing_to_shout("run a full-court press")
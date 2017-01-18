module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
  def self.yell_happily(words)
    words + "!!!" + " :)"
  end
end

speaker = Shout
speaker.yell_angrily("Get offa my property")
speaker.yell_happily("Just kidding come back")
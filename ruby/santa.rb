
class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    p @gender = gender
    p @ethnicity = ethnicity
  end
  def speak
    puts "Ho, ho ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
  def reindeer_ranking
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  def how_old(age=0) #defaults to 0
    puts "#{age} years old"
    @age = age
  end
  def celebrate_birthday
    p @age.to_i + 1
  end
  def get_mad_at(reindeer)
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    rein_index = reindeer_ranking.index(reindeer)
    bad_reindeer = reindeer_ranking.slice(rein_index)
    reindeer_ranking.delete(bad_reindeer)
    reindeer_ranking << reindeer
    p reindeer_ranking
  end
  def gender=(new_gender)
    @gender = new_gender
  end
  def age
    @age
  end
  def ethnicity
    @ethnicity
  end
end

# santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders.sample, example_ethnicities.sample)
# end

example_genders.length.times do |i|
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  santa.how_old(rand(140))
end

# santa = Santa.new("transgender", "Valerian")
# santa.how_old(rand(140))
# santa.celebrate_birthday
# santa.get_mad_at("Prancer")



# santa = Santa.new
# santa.speak
# santa.eat_milk_and_cookies("choco chip")
# santa.age(34)

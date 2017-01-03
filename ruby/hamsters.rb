puts "What is your hamsters name?"
hamster_name = gets.chomp
puts "On a scale of 1 - 10, how squeaky is your hamster?"
volume = gets.chomp
volume.to_i
puts "What color is your hamster's fur?"
color = gets.chomp
puts "Your hamster is a good candidate for adoption (true/false)?"
potential = gets.chomp
!!potential
age = nil
puts "How do you estimate your hamster's age?"
age = gets.chomp
if age.empty?
  age = nil 
else 
  age.to_f 
end

puts "Your hamster's name is #{hamster_name}"
puts "Your hamster is a level #{volume} squeaker"
puts "Your hamster's fur color is #{color}"
if potential = true
  puts "Your hamster is adoptable"
else
  puts "Your hamster cannot be adopted"
end
if age == nil
  puts "You don't know how old it is, that's ok!"
else
  puts "Your hamster is #{age} years old"
end
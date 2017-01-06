invalid_input = false
puts "What is your name?"
var_name = gets.chomp
if var_name == "Drake Cula"
  is_a_vampire = true
elsif var_name == "Tu Fang"
  is_a_vampire = true
else
  is_a_vampire = false
end
puts "How old are you?"
var_age = gets.chomp
puts "What year were you born?"
var_year = gets.chomp
real_age = 2016 - var_year.to_i
if var_age.to_i == real_age.to_i && real_age.to_i != 2016
  correct_age = true
elsif var_age.to_i != real_age.to_i && real_age.to_i != 2016
  correct_age = false
  puts "I just set correct_age to #{correct_age}."
  puts "the variable age is #{var_age.to_i}."
  puts "the real age is #{real_age.to_i}"
else
  invalid_input = true
end
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp
if garlic_bread == "yes"
  garlic_bread = true
elsif garlic_bread == "no"
  garlic_bread = false
else
  invalid_input = true
end
puts "Would you like to enroll in the company's health insurance? (yes/no)"
health_insurance = gets.chomp
if health_insurance == "yes"
  health_insurance = true
elsif health_insurance == "no"
  health_insurance = false
else
  invalid_input = true
end
puts "is_a_vampire = #{is_a_vampire}"
puts "correct_age = #{correct_age}"
puts "garlic_bread = #{garlic_bread}"
puts "health_insurance = #{health_insurance}"
puts "invalid_input = #{invalid_input}"
if invalid_input
  puts "Results inconclusive."
elsif is_a_vampire
  puts "Definitely a vampire."
elsif correct_age && (garlic_bread && health_insurance)
  puts "Probably not a vampire."
elsif correct_age != (garlic_bread != health_insurance)
  puts "Probably a vampire"
elsif !(correct_age && (garlic_bread && health_insurance))
  puts "Almost certainly a vampire."
else
end


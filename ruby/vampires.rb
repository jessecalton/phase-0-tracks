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
if var_age.to_i == real_age.to_i
  correct_age = true
elsif var_age.to_i != real_age.to_i
  correct_age = false
else
end
puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp
if garlic_bread == "yes"
  garlic_bread = true
elsif garlic_bread == "no"
  garlic_bread = false
else
end
puts "Would you like to enroll in the company's health insurance? (yes/no)"
health_insurance = gets.chomp
if health_insurance == "yes"
  health_insurance = true
elsif health_insurance == "no"
  health_insurance = false
else
end

if is_a_vampire = true
  puts "Definitely a vampire."
elsif correct_age && (garlic_bread && health_insurance)
  puts "Probably not a vampire."
elsif correct_age != (garlic_bread != health_insurance)
  puts "Probably a vampire"
elsif !(correct_age && (garlic_bread && health_insurance))
  puts "Almost certainly a vampire."
else
  puts "Results inconclusive."
end

var_finished = "done"
user_input = ""
puts "Name any allergies you have, one at a time. Type 'done' when you are finished."
while user_input != var_finished
  user_input = gets.chomp
  if user_input == "sunshine"
    puts "Probably a vampire"
      break
  end
end

employee_total = employee_total - 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
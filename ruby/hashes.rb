# Ask client information:
#   Name
#   Age
#   Number of Children
#   Decor Theme:
# Convert user info to appropriate data type
# Print out the hash to the screen when the user has answered all the questions
# Ask the user if they want to update any of the keys (i.e. :decor_theme)
#   Have them type “none” if there are none
# Print the latest version of the hash
# Exit

puts "Hello there! Please answer the following questions!"

puts "What is your name?"
  user_name = gets.chomp.to_s

puts "How old are you?"
  user_age = gets.chomp.to_i

puts "How many children do you have?"
  user_children = gets.chomp.to_i

puts "What would you like for your decor theme?"
  decor_theme = gets.chomp.to_s

user_information = {
  :user_name => user_name,
  :user_age => user_age,
  :user_children => user_children,
  :decor_theme => decor_theme
}

puts user_information

puts "Would you like to update any of this information? 
Type in the key of the item you'd like to change.
Say 'none' if everything looks good to you."
user_input = gets.chomp
if user_input == "user_name"
  puts "Change name to:"
  user_information[:user_name] = gets.chomp.to_s
elsif user_input == "user_age"
  puts "Change age to:"
  user_information[:user_age] = gets.chomp.to_i
elsif user_input == "user_children"
  puts "Change number of children to:"
  user_information[:user_children] = gets.chomp.to_i
elsif user_input == "decor_theme"
  puts "Change decor_theme to:"
  user_information[:decor_theme] = gets.chomp.to_s
else
end

p user_information
real_name = ''

aliases = {
  real_names: [
    ],
  spy_names: [
    ]
}
until real_name == "quit"

puts "What is your first and last name?"
real_name = gets.chomp
if real_name == "quit"
  break
end
aliases[:real_names].push(real_name)

vowels = "aeiou"
vowel_array = ["a", "e", "i", "o", "u"]
consonants = "bcdfghjklmnpqrstvwxyz"
consonant_array = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
reverse_name = real_name.split.reverse.join(' ')
reverse_name.chars

name_array = reverse_name.downcase.chars
# p name_array

name_array.map! do |x|
  if vowel_array.include?(x)
    x = vowel_array.fetch(-4 + vowel_array.index(x))
    #p x
  elsif consonant_array.include?(x)
    x = consonant_array.fetch(-20 + consonant_array.index(x))
    #p x
  else
    x = " "
  end
end

new_name = name_array.join('').split.map! do |x|
  x.capitalize
end

final_spy_name = new_name.join(' ')

puts "Congratulations, your spy name is #{new_name.join(' ')}." 





p real_name
p final_spy_name


aliases[:spy_names].push(final_spy_name)

p aliases[:real_names]
p aliases[:spy_names]



end


# x = 0 
# while aliases[:real_names].length <= x
#   p aliases[:real_names][x]
#   p aliases[:spy_names][x]
#   puts "#{aliases[:real_names][x]} is really #{aliases[:spy_names][x]}."
#   x = (x + 1)
# end

# ["a", "e", "i", "o", "u"]



### PSEUDOCODE!

# Enter a spy name

# Swap the first and last name

#   Change all vowels to the following vowel (aeiou)
#     If “vowels”.include? x
#       x.next
#   Change all consonants to the next consonant (bcdfghjklmnpqrstvwxyz)

# Capitalize first letters of name (.capitalize!)

# Print name


# X needs to equal the next indexed number of vowel array

# X = vowel_array.fetch.index(x + 1)

# next vowel method

# -5 + x.index


# house[‘Attic’].push(‘ghost’)
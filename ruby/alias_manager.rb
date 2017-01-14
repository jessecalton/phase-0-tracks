real_name = ""
until real_name == "quit"

puts "What is your first and last name?"
real_name = gets.chomp

vowels = "aeiou"
vowel_array = ["a", "e", "i", "o", "u"]
consonants = "bcdfghjklmnpqrstvwxyz"
consonant_array = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
reverse_name = real_name.split.reverse.join(' ')
reverse_name.chars

name_array = reverse_name.downcase.chars
p name_array

name_array.map! do |x|
  if vowel_array.include?(x)
    x = vowel_array.fetch(-4 + vowel_array.index(x))
    p x
  elsif consonant_array.include?(x)
    x = consonant_array.fetch(-20 + consonant_array.index(x))
    p x
  else
    x = " "
  end
end

new_name = name_array.join('').split.map! do |x|
  x.capitalize
end

final_spy_name = new_name.join(' ')

puts "Congratulations, your spy name is #{new_name.join(' ')}." 

end

aliases = {
  real_names: [
    ],
  spy_names: [
    ]
}

aliases[:real_names].push(real_name)
aliases[:spy_names].push(final_spy_name)

p aliases[:real_names]
p aliases[:spy_names]



x = 0 
while aliases[:real_names].length <= x
  p aliases[:real_names][x]
  p aliases[:spy_names][x]
  puts "#{aliases[:real_names][x]} is really #{aliases[:spy_names][x]}."
  x = (x + 1)
end

# ["a", "e", "i", "o", "u"]

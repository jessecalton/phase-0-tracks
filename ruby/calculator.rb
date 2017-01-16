

puts "What calculation would you like to perform?"
  equation = gets.chomp
  p array = equation.split(/ /)
  p array.length
  
p array[0]
p array[1]
p array[2]
def calculate(x, y, z)
  p x.to_i + y.to_i + z.to_i

end

x = array[0]
y = array[1]
z = array[2]
p x 
p y 
p z 

calculate(x, y, z)

# calculate(5, " + ", 4)

  

# # def calculate(x, y, z)
#   p x + y.to_i + z

# end
# calculate(5, " + ", 4)


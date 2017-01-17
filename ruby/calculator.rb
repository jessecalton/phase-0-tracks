
eqs = {
  operand1: [],
  operand2: [],
  operator: [],
  result: []
}

p eqs

equation = ""
until equation = false
equation = true
  puts "What calculation would you like to perform? Type 'done' when complete."
    equation = gets.chomp
    if equation == "done"
      break
    end
    p array = equation.split(/ /)
    
  p operand1 = array[0]
  p operand2 = array[2]
  p operator = array[1].to_sym
  
  if operand1.include? "."
    operand1 = array[0].to_f
  else 
    operand1 = array[0].to_i
  end
  
  if operand2.include? "."
    operand2 = array[2].to_f
  else 
    operand2 = array[2].to_i
  end
  p operand1
  p operand2
  if operator == :+
    p result = operand1 + operand2
    eqs[:operand1].push(operand1)
    eqs[:operand2].push(operand2)
    eqs[:operator].push(operator)
    eqs[:result].push(result)
  elsif operator == :-
    p result = operand1 - operand2
    eqs[:operand1].push(operand1)
    eqs[:operand2].push(operand2)
    eqs[:operator].push(operator)
    eqs[:result].push(result)
  elsif operator == :*
    p result = operand1 * operand2
    eqs[:operand1].push(operand1)
    eqs[:operand2].push(operand2)
    eqs[:operator].push(operator)
    eqs[:result].push(result)
  elsif operator == :/
    p result = operand1 / operand2
    eqs[:operand1].push(operand1)
    eqs[:operand2].push(operand2)
    eqs[:operator].push(operator)
    eqs[:result].push(result)
  else
  end
end

x = eqs[:operand1].length
puts "#{x} Calculations performed:"

x.times do |y|
  puts "#{eqs[:operand1][y]} #{eqs[:operator][y]} #{eqs[:operand2][y]} = #{eqs[:result][y]}"
end

  




# def calculate(x, y, z)
#   p x.to_i + y.to_i + z.to_i

# end

# x = array[0]
# y = array[1]
# z = array[2]
# p x 
# p y 
# p z 

# calculate(x, y, z)

# calculate(5, " + ", 4)

  

# # def calculate(x, y, z)
#   p x + y.to_i + z

# end
# calculate(5, " + ", 4)


# write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.

def ice_cream 
  puts "What kind of ice cream do you want?"
  yield("brownies", "strawberries", "cheesecake")

end
ice_cream { |topping1, topping2, topping3| puts "okay so you want #{topping1}, #{topping2}, and #{topping3}?" }

####### Release 1
# declare an array and a hash, and populate each of them with some data

#iterate using .each for array
places = ["Germany", "Japan", "Peru", "Cuba"]
new_places =[]
puts "original data:"
p places

places.each do |place|
  new_places << place.chop
  puts place
end 

puts "after .each call:"
p places
p new_places
 



# iterate using .each for hash

places = {:Europe => 'Germany', :Asia => 'Japan', :South_America => 'Peru', :North_America => 'Cuba'}
 puts places

places.each do |continent, country|
  puts "We would like to travel to #{country} when we visit #{continent}"
end  
puts "after .each call:"
p places

#iterate using .map! for array

places = ["Germany", "Japan", "Peru", "Cuba"]
puts "original data:"
 p places

places.map! do |x|
  puts "we would like to visit #{x}"
  x.upcase
end  
puts "after .map! call:"
p places

#iterate using .map for array

places = ["Germany", "Japan", "Peru", "Cuba"]
puts "original data:"
 p places

places.map do |x|
  puts "we would like to visit #{x}"
end  
puts "after .map call:"
p places

########################### Release 2

# Array iteration that deletes

items = [3, 7, 23, 1, 77]
puts "Original data:"
p items
items.delete_if { |x| x < 5 }
p items
items.each do |x|
  puts "These are our items: #{x}"
end

# Array that filters data that satisfies condition

items = [3, 7, 23, 1, 77]
puts "Original data:"
p items
items.keep_if { |x| x < 5 }
p items
items.each do |x|
  puts "These are our items: #{x}"
end

# Array that filters items satisfying a certain condition

items = ["cheesecake", "peanut", "bananas", "kiwi", "pie"]
puts "Original data:"
p items

items.each do |x|
  if x.length > 5
  puts "These are our items: #{x}"
end
end

# An array with a method removing items until the condition evaluates to false.

numbers = [5, 7, 11, 13, 16, 69, 90330, 369, 13]
puts "original data:"
p numbers
p numbers.length
numbers.each do |x|
  until numbers.length == 2
    puts "These are our numbers #{numbers}"
    y = (numbers.length - 1)
    numbers.delete_at(y)
  end
end

puts "after .each call:"
p numbers

# A hash that deletes items that meet a certain condition

places = {:Germany => 4250, :Japan => 5322, :Peru => 2004, :Cuba => 112}
 puts places

new_hash = places.reject {|country, miles_away| miles_away > 2000}
p new_hash
new_hash.each do |country, miles_away|

puts "We can travel to #{country} because it is local and airfare is expensive!" 
  
end

# (Alternate)

places = {:Germany => 4250, :Japan => 5322, :Peru => 2004, :Cuba => 112}
 puts places

new_hash = places.reject! {|country, miles_away| miles_away > 2000}
p places
places.each do |country, miles_away|

puts "We can travel to #{country} because it is local and airfare is expensive!" 
  
end

# A hash that filters data that satisfies a condition

places = {:Germany => 4250, :Japan => 5322, :Peru => 2004, :Cuba => 112}
 puts places

new_hash = places.select! {|country, miles_away| miles_away > 2000}
p places
places.each do |country, miles_away|

puts "We can travel to #{country} because we work at Google and make buku bucks and airfare is expensive but we don't care!" 
  
end

# Hash that filters items satisfying a certain condition

places = {:Germany => 4250, :Japan => 5322, :Peru => 2004, :Cuba => 112}
 puts places


p places.values_at(:Peru)

# write your own method that takes a block. Your method should print out a status message before and after running the block. Your block doesn't have to do anything fancy -- it can just print out several of its own parameters.

def ice_cream 
  puts "What kind of ice cream do you want?"
  yield("brownies", "strawberries", "cheesecake")

end
ice_cream { |topping1, topping2, topping3| puts "okay so you want #{topping1}, #{topping2}, and #{topping3}?" }

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
 



# hash
places = {:Europe => 'Germany', :Asia => 'Japan', :South_America => 'Peru', :North_America => 'Cuba'}
 puts places

# iterate using .each for hash
places.each do |continent, country|
  puts "We would like to travel to #{country} when we visit #{continent}"
end  
puts "after .each call:"
p places

places = ["Germany", "Japan", "Peru", "Cuba"]
puts "original data:"
 p places

#iterate using .map! for array
places.map! do |x|
  puts "we would like to visit #{x}"
  x.upcase
end  
puts "after .map! call:"
p places

places = ["Germany", "Japan", "Peru", "Cuba"]
puts "original data:"
 p places

#iterate using .map for array
places.map do |x|
  puts "we would like to visit #{x}"
end  
puts "after .map call:"
p places

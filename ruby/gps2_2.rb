



# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# initialize the hash 
# 
def create_list
    list = {} 
end



# set default quantity as empty 
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: adding to the list hash 
# 
# add item to list using hash append
# list[:the_item] = quantity
#



# output: return list 

#some_hash["something".to_sym] = 1

#puts some_hash


def add_item(list, item_name, quantity)
    list[item_name.to_sym] = quantity
    list 
end 

#grocery_list = create_list

#p add_item(grocery_list, "oranges", 5)

    

# Method to remove an item from the list
# input: list, item
# steps: delete key-value pair from the hash 
# 
# output: list 

def remove_item(list, item_name)
    list.delete(item_name.to_sym)
    list
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps: replace quantity with new quantity 
# reassign new value to the input key 
# output: list 

def update_list(list, item_name, quantity)
    list[item_name.to_sym] = quantity
    list

end 

#grocery_list = create_list

#p add_item(grocery_list, "oranges", 5)

#update_list(grocery_list, "oranges", 4)

# Method to print a list and make it look pretty
# input: list 
# steps: 
# output: printing the list 

def print_list(list)
    list.each do |item, quantity| 
        puts "The amount of #{item} you need to buy is #{quantity}."        
    end
end

grocery_list = create_list

add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
remove_item(grocery_list, "lemonade")

update_list(grocery_list, "ice cream", 1)

print_list(grocery_list)


#### Reflect ####
# I learned that my pseudocoding skills need some work. My guide was very 
# helpful in showing me the path towards good pseudocode. I realize now that
# pseudocoding gets most of the thinking out of the way and allows you to
# have an easier go with writing out your code.
#
# It was best to use a hash for this sort of problem, as we had values
# attached to different items within our hash. An array might have been
# more useful if there were more data entries attached to the items in our
# array.
#
# A method will return the result of the specified parameters once they have
# run through the code within the method.
#
# We can pass strings, integers, symbols, variables, into methods as arguments.
# It seems that any piece of data can function as an argument in a method.
#
# We can define a method as a variable to allow it to be used in other methods.
#
# It's getting easier to set up and manipulate hashes, but a lot of it is still
# confusing. I think lots of repetition will help solidify this concept, as my
# biggest issue is visualizing what the proper code looks like.
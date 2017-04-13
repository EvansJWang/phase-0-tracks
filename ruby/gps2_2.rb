# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 1. Get string, 
  # 2. spilt into words, 
  # 3. for each word, each value == Key
  # 4. set default value = 1 
  # # set default quantity
  # # print the list to the console [can you use one of your other methods here?]
  # 5. call print list method - displays list to console
# output: List = Hash Item = Key Quantity = value

def create_list(items)
  list = {}
  items.split(' ').each do |item|
  list[item] = 1
  end
  list
end

# # Method to add an item to a list
# # # input: list, item name, and optional quantity
# # # steps:
# # 1. print list method to visualize so far
# # 2. create a method that takes 3 values (list, item name(key), quantity(value))
# # # output: list { item => quantity }

def add_item(list, item_name, quantity=1)
  print_list(list)
  list[item_name] = quantity
  list
end

# # Method to remove an item from the list
# # input: list and item to delete from list
# # steps:
# 1. print list method to visualize
# 2. create a method takes 2 inputs (list, item_to_delete)
# 3. delete that item from list 
# # output: List { item => quantity } *without item_to_delete

def delete_item(list, item_to_delete)
  print_list(list)
  list.delete(item_to_delete)
  list
end

# # Method to update the quantity of an item. 
# # input:  
# # steps:
# 1. print the list 
# 2. method takes 3 values ( list, item_name, quantity)
# # output: list { item => quantity updated}

def update_quantity(list, item_name, quantity)
  print_list(list)
  list[item_name] = quantity
  list
end

# # Method to print a list and make it look pretty
# # input: list
# # steps: 
# 1. prints "--------"
# 2. prints " shopping list" (keys)
# 3. prints " quantity" (values)
# 4. prints "--------"
# # output: 

def print_list(list)
  p "shopping list"
  p "_______________"
  list.each_with_index do |(item,quantity), index|
  p "#{index + 1}: #{item} __

Enter chat message or link here

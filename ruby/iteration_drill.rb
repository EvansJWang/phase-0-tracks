# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
zombie_apocalypse_supplies.each {|x| print x, " * "}

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
### check each item in array at index 0 and sort alphabetically

## for each value in array, compare to each other. constant swapping loop through
supplies = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]

supplies.each do 
index = 0 
 while index < (supplies.length-1)
 if supplies[index].downcase > supplies[index+1].downcase
   supplies[index], supplies[index+1] = supplies[index+1], supplies[index]

 end
  index += 1 
end 
end


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# 
supplies = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]

name = "hatchet"

# def string_checker(x)
supplies.each do |items|
  #does name == item 1
  if name == items
    found = true
  else
    found = false
  end
  if found == true
    puts "It's in the bag"
    break
  else 
    puts "not in bag"
    break
  end
end



# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
supplies = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"]

extrabag = []
# Take the first five items
index = 0 
until index == 5
  extrabag << supplies[index]
  index +=1
end

p extrabag



# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

(zombie_apocalypse_supplies + other_survivor_supplies).uniq

zombie_apocalypse_supplies| other_survivor_supplies



# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
extinct_animals.each {|key, value| print "#{key} - #{value} * "}

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
keptanimals = {}

extinct_animals.each do |key, value|
  if value < 2000 
    keptanimals[key] = value
  end
end

p keptanimals

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.

extinct_animals.each do |key, value|
  extinct_animals[key] = value - 3
end
# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
extinct_animals.each do |key, value|
    for i in 0...maybe.length
  if key == maybe[i]
        puts "#{key} is very extinct"
  end
end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
arr =[]

# extinct_animals.delete_if {|key, value| key == "Passenger Pigeon" }
extinct_animals.delete_if {|key, value| key == "Passenger Pigeon"
if key == "Passenger Pigeon"
  arr << key << value
end
}












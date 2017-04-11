
##Release 1 & 2
class Santa
end

class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
end

class Santa
  def eat_milk_and_cookiez(cookietype)
    print "That was a good #{cookietype}!"
  end
end

class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end
end

class Santa
  def celebrate_birthday
    @age += 1
  puts "Happy birthday you are now #{age}"
  end
end

class Santa
  def get_mad_at(reindeer)
    reindeer = @reindeer_ranking.last
    puts "#{reindeer} is now last on the rankings"
  end
end


nick = Santa.new
nick.speak
nick.eat_milk_and_cookiez("oreo")

class Reindeer
  def initialize(name)
    @name = name
    @location = 'the North Pole'
  end
  
  def take_off(altitude)
    puts "#{@name} took off!"
    puts "#{@name} ascended to #{altitude} feet"
  end
  
  def land(location)
    puts "Landed safely in #{location}"
    @location = location
  end
  
  def aboutreindeer 
    puts "Name: #{@name}"
    puts "location: #{@location}"
  end
end

reindeer = Reindeer.new("Rudolpho")
reindeer.take_off(20000)
reindeer.land("Merica")
reindeer.aboutreindeer


### Release 2
class Reindeer
  def initialize(name)
    @name = name
    @location = "the North Pole"
  end 
  
  def take_off(altitude)
    puts "#{@name} took off!"
    puts "at #{@altitude}"
  end
  
  def land(location)
    puts "#{@name} landed at #{location}"
    @location = location
  end
  
  #getter method for attributes(read)
  def name 
    @name
  end
  
  def location
    @location
  end 
  ## ^^^ makes the private data from within the class accessible to outside the classs
  
  # setter methods (write) - allows attributes to be writable (ex. allows code outside the class to change @attributes like @name for the reindeer ^)
=begin will work but not preferred method
  def name_changer(new_name)
    @name = new_name
  end
=end
  def name=(new_name)
    @name = new_name
  end
  ####
end

reindeer = Reindeer.new("basher")
reindeer.take_off(20000)
reindeer.land("Merica")
reindeer.name = "Cool new name"
###  reindeer.name == attribute @name
### reindeer.location == attribute @ location both from the initialize method within the class
puts "#{reindeer.name} is in #{reindeer.location}"




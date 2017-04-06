names_of_gfs = ["meg", "kate", "martha", "julia"]

names_of_gfs_with_status = {
  
  "meg" => "ex",
  "kate" => "ex",
  "martha" => "ex",
  "julia" => "current"
  
}

puts ".each"

names_of_gfs.each do |name|
  puts name.next
  
end
 puts names_of_gfs
 
 puts ".map"
 
 names_of_gfs.map do |name|
  puts name.length
end
 puts names_of_gfs
 
  puts ".map!"
 
 names_of_gfs.map! do |name|
  name = "#{name} im totally over her"
end
 puts names_of_gfs
 
   puts "now with a hash"
   
puts ".each"

names_of_gfs_with_status.each do |name, status|
  puts "#{name} is now a #{status}"
  
end

 puts ".map"
 
 names_of_gfs_with_status.map do |name, status|
 name.next
 puts "#{name} is now a #{status}"
end


puts "r 2"
puts "q 1"

a = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6}
a.select! {|k,v| v > 4}  
p a


b = [1, 2, 3, 4, 5, 6]
b.keep_if { |v| v < 3 } 
p b



puts "q 2"

c = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6}
p c.select {|k,v| v > 4}  
p c


d = [ "w", "x", "y", "z" ]
p d.last(2) 
p d

puts "q3"

e = [1, 2, 3, 4, 5, 6]
p e.reject { |v| v < 3 } 
p e

f = { "a" => 1, "b" => 2, "c" => 3, "d" => 4, "e" => 5, "f" => 6}
p f.values  
p f

puts "q4"

g = [1, 2, 3, 4, 5, 6]
g.delete_if {|v| v < 3 } 
p g
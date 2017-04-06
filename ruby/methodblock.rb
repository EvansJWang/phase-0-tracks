def sayhello
  p "hello there!"
  yield("evans", "W")
  yield("Diana", "c")

end

sayhello {|name1, name2| puts " good to see you #{name1} and #{name2}"}


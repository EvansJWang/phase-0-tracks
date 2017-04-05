letters = ["a", "b", "c", "d"]

puts "original data:"
p letters

numbers = {1=> "one", 2=> "two", 3 => "three"}

modified_letters = letters.map do |letter|
    puts letter
    letter.next
  end

p "After .map call:"
p letters
p modified_letters


def method1

end

def method2

end

def method3

end

def method4

end
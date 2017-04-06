letters = ["a","b","c","d","e"]

p "Original Data"
p letters


modified_letters = letters.map do |letter|
  p letter 
  letter.next
end

p " After the .map call"
p letters
p modified_letters
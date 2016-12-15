require_relative 'offset.rb'


a = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
"O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "0", "1", "2", "3", "4" , "5", "6", "7", "8", "9", " ", ".", ",", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "[", "]", "<", ">", ";", ":", "/", "?", "|"]

a1 = a.rotate(51)
a2 = a.rotate(-51)

puts a1[0]
puts a2[0]


def random_number(number)
  charset = Array('0'..'9')
  Array.new(number) { charset.sample }.join
end

key = random_number(5)

a = key[0..1].to_i
b = key[1..2].to_i
c = key[2..3].to_i
d = key[3..4].to_i


puts a + a_offset
puts b + b_offset
puts c + c_offset
puts d + d_offset

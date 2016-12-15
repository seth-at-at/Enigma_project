require'minitest'
require'minitest/pride'
require'./lib/thedate'
require'date'
require'pry'

class KeygenTest < Minitest::Test
  def test_can_rotate_letter_array
    rotation.rotate(51)
    assert_equal "n", a1[0]
  end

  def test_can_find_date
    date
  end

end






# def random_number(number)
#   charset = Array('0'..'9')
#   Array.new(number) { charset.sample }.join
# end
#
# key = random_number(5)
# date = random_number(6)
#
# a = key[0..1].to_i
# b = key[1..2].to_i
# c = key[2..3].to_i
# d = key[3..4].to_i
#
#
# puts a
# puts b
# puts c
# puts d
#
# offset = date
#
# puts offset

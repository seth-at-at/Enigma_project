require'minitest/autorun'
require'minitest/pride'
require'./lib/offset.rb'

class OffsetTest < Minitest::Test
  def test_can_convert_to_string
    offset = Offset.new
    offset_string = date_squared.to_s
    offset = offset_string.split("")

    assert_equal ["8", "6", "5", "6"], offset[-4..-1]
  end

  def test_can_split_numbers
    offset = Offset.new

    assert_equal 8, offset.a_offset
    assert_equal 6, offset.b_offset
    assert_equal 5, offset.c_offset
    assert_equal 6, offset.d_offset
  end
end
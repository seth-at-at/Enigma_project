require'minitest/autorun'
require'minitest/pride'
require'./lib/thedate'
require'date'
require'pry'

class Thedate < Minitest::Test

  def test_can_find_date
    date = Thedate.new(141216)

    assert_equal 141216, todays_date
  end

  def test_can_square_date
    date = Thedate.new(141216)
    date = todays_date
    date_squared = date * date

    assert_equal 19941958656, date_squared
  end
end

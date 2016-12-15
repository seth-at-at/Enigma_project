require_relative 'thedate.rb'

class Offset
  def offset
    offset_string = date_squared.to_s
    offset = offset_string.split("")
    offset[-4..-1]
  end

  def a_offset
    offset[0].to_i
  end

  def b_offset
    offset[1].to_i
  end

  def c_offset
    offset[2].to_i
  end

  def d_offset
    offset[3].to_i
  end
end
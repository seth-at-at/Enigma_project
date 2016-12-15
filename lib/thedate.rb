require'date'
require'pry'

def todays_date
  dd = Date.today.mday.to_s
  mm = Date.today.mon.to_s
  yy = Date.today.year.to_s[2,3]

  (dd + mm + yy).to_i
end

def date_squared
  todays_date * todays_date
end

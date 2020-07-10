=begin
Challenge: write a method that changes dates in the format 2016-06-17 to the format 17.06.2016. You must use a regular expression and should use methods described in this section.
=end

def format_date(str)
  if str.match(/\d{4}-\d{2}-\d{2}/)
    year, month, day = str.split(/-/)
    return "#{day}.#{month}.#{year}"
  end
  str
end

p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2016/06/17') # -> '2016/06/17' (no change)
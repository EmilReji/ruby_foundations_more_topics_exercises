=begin
Write a method that returns all of the fields in a haphazardly formatted string. A variety of spaces, tabs, and commas separate the fields, with possibly multiple occurrences of each delimiter.

Takes string and splits it so that various delimiters can be applied
\s covers whitespace
comma explicitly stateted
use + to cover 1 or more occurances
=end

def fields(str)
  str.split(/[\s,]+/)
  # str.split(/[ \t,]+/) # given answer
end
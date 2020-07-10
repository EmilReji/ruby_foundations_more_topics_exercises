# en = Enumerator.new do |index| 
#   (index..1).to_a.reduce(&:*)
# end
# puts en.take(7)

fib = Enumerator.new do |y|
  b = 1
  y << b

  accum = b
  y << accum

  loop do
    b += 1
    accum *= b
    y << accum
  end 
end

puts fib.take(7) # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

i = 0
fib.each do |v|
  break if i >= 7
  puts v
  i += 1
end
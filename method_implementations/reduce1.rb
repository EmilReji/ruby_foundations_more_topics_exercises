class Array
  def reduce(accumulator = 0)
    i = 0
    loop do
      break if i >= self.length
      accumulator = yield(accumulator, self[i])
      i += 1
    end
    accumulator
  end
end


x = [1, 2, 3].reduce do |acc, num|
  acc + num
end

p x

y = [1, 2, 3, 4].reduce(1) do |acc, num|
  acc * num
end

p y

puts [1, 2, 3, 4, 5].reduce { |acc, num| acc + num if num.odd? } 
# should return error because when num is 2 and block is run, if statement never
# run and nil returned by block which is value of accumulator; then you try to
# run + on nil, returns error of undefinied method
class Array
  def reduce(accumulator = 0)
    accumulator = '' if self.all? { |e| e.class == String }
    accumulator = [] if self.all? { |e| e.class == Array }
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

a = ['a', 'b', 'c'].reduce { |acc, value| acc += value }     # => 'abc'
p a
b = [[1, 2], ['a', 'b']].reduce { |acc, value| acc + value } # => [1, 2, 'a', 'b']
p b
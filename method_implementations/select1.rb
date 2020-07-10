class Array
  def select
    return_coll = []
    i = 0
    loop do
      break if i >= self.length
      return_coll << self[i] if yield(self[i])
      i += 1
    end
    return_coll
  end
end


array = [1, 2, 3, 4, 5]

p array.select { |num| num.odd? }       # => [1, 3, 5]
p array.select { |num| puts num }       # => [], because "puts num" returns nil and evaluates to false
p array.select { |num| num + 1 }        # => [1, 2, 3, 4, 5], because "num + 1" evaluates to true
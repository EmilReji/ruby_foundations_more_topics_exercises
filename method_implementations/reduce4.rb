def reduce(arr, accum = omitted = true)
  accum = omitted ? arr[0] : accum
  index = omitted ? 1 : 0
  
  while index < arr.length
    accum = yield(accum, arr[index])
    index += 1
  end
  
  accum
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15     
p reduce(array, 1) { |acc, num| acc + num }                   # => 16
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array, 1) { |acc, num| acc * num }                 # => 120
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']  
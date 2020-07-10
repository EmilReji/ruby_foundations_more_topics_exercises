# won't work if accum passed in is the same as arr[0]
# reduce(array, 1) { |acc, num| acc + num }
# this should return 16 rather than 15
def reduce(arr, accum = arr[0])
  index = accum == arr[0] ? 1 : 0 
  
  while index < arr.length
    accum = yield(accum, arr[index])
    index += 1
  end
  
  accum
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array, 1) { |acc, num| acc * num } 
     # => 120
p reduce(['a', 'b', 'c']) { |acc, value| acc += value }     # => 'abc'
p reduce([[1, 2], ['a', 'b']]) { |acc, value| acc + value } # => [1, 2, 'a', 'b']  
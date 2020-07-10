def max_by(arr)
  return nil if arr.empty?
  largest_val = yield(arr[0])
  largest_index = 0
  index = 0

  loop do
    break if index >= arr.size
    if yield(arr[index]) > largest_val
      largest_val = yield(arr[index])
      largest_index = index
    end
    index += 1
  end

  arr[largest_index]
end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
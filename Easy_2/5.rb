def drop_while(arr)
  i = 0
  loop do
    break unless yield(arr[i]) && i < arr.size
    i += 1
  end
  arr[i..-1].dup
end

def drop_while1(arr)
  i = 0
  loop do
    break unless yield(arr[i])
    break if i >= arr.size
    i += 1
  end
  arr[i..-1].dup
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
def count2(arr)
  i = 0
  count = 0

  while i < arr.length
    count += 1 if yield(arr[i])
    i += 1
  end

  count
end

def count(arr)
  count = 0

  arr.each do |e|
    count += 1 if yield(e)
  end

  count
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2
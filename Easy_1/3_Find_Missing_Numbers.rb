def missing2(arr)
  (arr.first..arr.last).to_a.select do |curr_num|
    !arr.include?(curr_num) 
  end     
end

def missing1(arr)
  new_arr = []
  i = arr.first
  
  loop do
    break if i >= arr.last
    new_arr << i unless arr.include?(i)
    i += 1
  end
  
  new_arr
end

def missing(arr)
  new_arr = []
  arr.each_cons(2) do |pair|
    new_arr += ((pair[0]+1)...pair[1]).to_a
  end
  new_arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
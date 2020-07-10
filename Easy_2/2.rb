def zip(arr1, arr2)
  final_arr = []
  arr1.size.times do |index| 
    final_arr << [arr1[index], arr2[index]]
  end
  final_arr
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]
# def map(arr)
#   i = 0
#   arr_output = []

#   while i < arr.length
#     arr_output << yield(arr[i])
#     i += 1
#   end

#   arr_output 
# end

# p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
# p map([]) { |value| true } == []
# p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
# p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
# p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

  def map(coll)
    output = coll.class.new

    coll.each do |e|
      output << yield(e) if coll.class == Array
      #p e
      output[e[0]] = yield(e[0], e[1]) if coll.class == Hash
    end

    output
  end

p map({}) { |k, v| v*v} == {}
p map({a: 1, b: 2, c: 3}) { |k, v| v*v} == {:a=>1, :b=>4, :c=>9}
p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
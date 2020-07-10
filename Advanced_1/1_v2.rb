enum = Enumerator.new do |y|
  index = 1
  val = index
  loop do 
    val *= index
    y << val
    index += 1
  end
end

puts enum.take(7)
puts
7.times do
  puts enum.next
end
puts
enum.each_with_index do |val, ind| 
  puts val
  break if ind >= 6
end
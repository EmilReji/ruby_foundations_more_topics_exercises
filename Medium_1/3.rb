def gather(arr)
  puts "Let's start gathering food."
  yield(arr)
  puts "Nice selection of food we have gathered!"
end

items = ['apples', 'corn', 'cabbage', 'wheat']

gather(items) do |arr|
  puts "#{arr.join(', ')}"
end

items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*start, last|
  puts start.join(', ')
  puts last
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |first, *start, last|
  puts first
  puts start.join(', ')
  puts last
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |first , *rest|
  puts first
  puts rest.join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |first, second, third, forth|
  puts "#{first}, #{second}, #{third}, #{forth}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!

class Integer
  def times
    i = 0
    if block_given?
      loop do
        break if i >= self
        yield(i)
        i += 1
      end
    end
    self
  end
end

puts 3.times
puts
puts 3.times { |x| puts "this is a test #{x}" }
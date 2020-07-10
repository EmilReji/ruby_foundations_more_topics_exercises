class Array
  def each
    if block_given?
      i = 0
      loop do
        break if i >= self.length
        yield(self[i])
        i += 1
      end
    end

    self
  end
end

[1, 8, 3, 4].each { |num| puts "#{num} do nothing" }  
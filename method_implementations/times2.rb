def times(val)
  if block_given?
    i = 0
    loop do
      break if i >= val
      yield(i)
      i += 1
    end
  end
  val
end

times(5) do |num|
  puts num
end
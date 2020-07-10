def step(start_val, end_val, step_val)
  raise "step can't be less than  or equal to zero" if step_val <= 0
  while start_val <= end_val
    yield(start_val)
    start_val += step_val
  end
  (1..10)
end

step(1, 10, 3) { |value| puts "value = #{value}" }
step(1, 10, -1) { |value| puts "value = #{value}" }
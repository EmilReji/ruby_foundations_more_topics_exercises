# Convert Decimal to Octal:

=begin
octal val = 0
i = 0
given number
run a loop until num < 8
  run divmod on num to get [division val, mod val]
  num = division_val
  octal val += (mod_val * 10^i)
  increment i by 1
=end


def octal_val(decimal)
  octal = 0
  i = 0
  num = decimal

  loop do
    break if num <= 0
    octal += (num.divmod(8)[1] * (10 ** i))
    num = num.divmod(8)[0]
    i += 1
  end

  octal
end

p octal_val(1004) # 1754


arr = [8, 10, 12, 14, 16, 33]

octal_arr = arr.map do |val|
  octal_val(val) 
end

p octal_arr # [10, 12, 14, 16, 20, 41]

# p 1004.divmod(8) # [125, 4]
# p 125.divmod(8) # [15, 5]
# p 15.divmod(8) # [1, 7]
# p 7.divmod(8) # [0, 7]

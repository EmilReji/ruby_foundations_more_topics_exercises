def divisors1(num)
  (1..num).to_a.each_with_object([]) do |divisor, arr|
    arr << divisor if num % divisor == 0
  end
end

def divisors2(num)
  arr = []
  
  middle = Math.sqrt(num).to_i
  
  if Math.sqrt(num) == middle
    arr << middle
  end
  
  (1..middle).to_a.each do |divisor|
    if num % divisor == 0
      arr.unshift(divisor)
      arr << num/divisor
    end
  end
  
  arr.uniq.sort
end

def divisors(num)
  arr = []
  
  middle = Math.sqrt(num).to_i
  
  if Math.sqrt(num) == middle
    arr << middle
  end
  
  (1..middle).to_a.each do |divisor|
    if num % divisor == 0
      arr.insert(arr.length/2, divisor) unless arr.include? (divisor)
      opposing_divisor = num/divisor
      arr.insert((arr.length/2) + 1, opposing_divisor) unless arr.include? (opposing_divisor)
    end
  end
  
  arr
end


=begin
How fast can you make your solution go? How big of a number can you quickly reduce to its divisors? Can you make divisors(999962000357) return almost instantly? (The divisors are [1, 999979, 999983, 999962000357].) Hint: half of the divisors gives you the other half.
first and last multiplied = nums
2nd and 2nd last multiplied = num
and so on

verify Math.sqrt(num) is an integer; if it is it will be center value; odd num divisiors; add Math.sqrt(num) to array
if it isn't an integer, 1st half will be less then that value and right half greater than; even num divisors
Iterate from 1 to Math.sqrt(num) - 1
=end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(36) == [1, 2, 3, 4, 6, 9, 12, 18, 36]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute